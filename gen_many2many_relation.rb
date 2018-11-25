def exsits_belongs(x1, x2)
  return true if $many2many.find { |x| x == [x1, x2] }
  $belongs[x1].try(:each) do |belong|
    return true if belong == x2.singularize
    if belong.class == Array
      return true if belong[1].table_name == x2
    end
  end
  false
end

#FIXME: bug here!

$many2many = []
$belongs.map do |key, arr|
  #p key, arr
  next if arr.size < 2
  # c(n,2)
  arr.permutation(2).each do |comb|
    x1, x2 = comb
    # x1 = x1[1].table_name if x1.class == Array
    # x2 = x2[1].table_name if x2.class == Array
    # next if exsits_belongs(x1, x2)
    if exsits_belongs(x1, key) and exsits_belongs(x2, key) and x1 >= x2 #(just once!)
      puts "!!!!  ===> \t #{x1} and #{x2} has many_to_many through #{key}"
      $many2many << [x1, x2]
      filename = "app/models/#{x1.singularize}.rb"
      insert_into_file(filename, "\n  has_many :#{x2.pluralize}, through: :#{key.pluralize}", "\nend", false)
      insert_into_file(filename, "\n#", "^\s*belongs_to\s+:#{key}", false)
      filename = "app/models/#{x2.singularize}.rb"
      insert_into_file(filename, "\n  has_many :#{x1.pluralize}, through: :#{key.pluralize}", "\nend", false)
      insert_into_file(filename, "\n#", "^\s*belongs_to\s+:#{key}", false)
      filename = "app/models/#{key.singularize}.rb"
      insert_into_file(filename, "\n#", "^\s*has_many\s+:#{x2.pluralize}\s*", false)
      insert_into_file(filename, "\n#", "^\s*has_many\s+:#{x1.pluralize}\s*", false)
      #remove key has_many x1,x2 and x1,x2 belongs_to key

    end
  end
end
