require_relative 'extra_databases'

def human_table_name(t)
  clazz_name = t.camelize.singularize
  Object.const_get(clazz_name).connection.retrieve_table_comment(t)
end


File.open("public/index2.html","w") do |f|
  f.puts "<html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8' /></head><body>"
  f.puts "<table>"
  ActiveRecord::Base.establish_connection("#{Rails.env}".to_sym)
  ActiveRecord::Base.connection.tables.each do |t|
    next if t.match /_\d/ #表的名字类似goodslist_20151127
    f.puts "<tr>"
    f.puts "<td>#{human_table_name(t)}</td><td><a href='./#{t}'>#{t}</a></td>"
    f.puts "</tr>"
  end
  $extra_databases.each do |extra|
    f.puts "<tr>"
    f.puts "<td>---database:#{extra}---</td>"
    f.puts "</tr>"
    ActiveRecord::Base.establish_connection("#{extra}_#{Rails.env}".to_sym)
    ActiveRecord::Base.connection.tables.each do |t|
      next if t.match /_\d/ #表的名字类似goodslist_20151127
      f.puts "<tr>"
      f.puts "<td>#{human_table_name(t)}</td><td><a href='./#{t}'>#{t}</a></td>"
      f.puts "</tr>"
    end
  end
  f.puts "</table></body></html>"
end



