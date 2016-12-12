require_relative 'extra_databases'

def gen_scaffold(t)
  clazz_name = t.camelize.singularize
  cols = ActiveRecord::Base.connection.columns(t).delete_if{|x| x.name=="created_at" || x.name=="updated_at"}
  fields = cols.map{|x| x.name+":"+x.type.to_s}.join(" ")
  puts "rails g scaffold #{clazz_name} #{fields} -f"
  `rails g scaffold #{clazz_name} #{fields} -f`
end

def fix_primary_key(t)
  #TODO: 目前写死primary_key为id，以后也许可以自动检测
  # 对于数据库view类型的模型，必须手动设置primary_key。更好的方式是只有view执行这个方法。
  single = t.singularize
  filename = "app/models/#{single}.rb"
  `rpl "\nend" "\n  self.primary_key = 'id'\nend" #{filename}`

end

def fix_table_name(t)
  single = t.singularize
  if single == t || single+"s" != t #表的名字是单数，或者是类似y结尾的不规则英文复数规则
    filename = "app/models/#{single}.rb"
    `rpl "\nend" "\n  self.table_name = '#{t}'\nend" #{filename}`
  end
end

def fix_connection(t, extra_db)
  single = t.singularize
  filename = "app/models/#{single}.rb"
  env_str = '#{Rails.env}'
  str = "#{extra_db}_#{env_str}"
  `rpl "\nend" '\n  establish_connection "#{str}".to_sym\nend' #{filename}`
end

$database_tables.each do |db, tables|
  if db != :DEFAULT
    ActiveRecord::Base.establish_connection("#{db}_#{Rails.env}".to_sym)
  end
  tables.each do |t|
    next if t.match /_\d/ #表的名字类似goodslist_20151127
    if ARGV[0]=="inc_update"
      clazz_name = t.camelize.singularize
      begin
        clazz = Object.const_get(clazz_name)
        puts "skip exsits table #{t}"
        next
      rescue Exception => e
        puts e
      end
    end
    gen_scaffold(t)
    fix_primary_key(t)
    fix_table_name(t)
    fix_connection(t, db) if db != :DEFAULT
  end
end

require_relative 'gen_relations' unless ARGV[1]=="no_relation"
