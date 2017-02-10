# Скрипт создаёт базу под текущую ветку, предоставляет привилегии, заполняет её.
#
# Подразумевается, что в database.yml есть такое:
#     <% branch = Git.open('.').current_branch %>
#     development:
#     database: eco_<%=branch%>_db
#
# И в Gemfile gem 'git'.
#
# Запуск: $ ruby create_base_for_branch

require 'mysql2'
require 'git'

is_production = false

branch_name = Git.open('.').current_branch
user_name = 'iiko'

db_name = "#{user_name}_develop" # например: forbiz_feature_social_buttons_db
if is_production
  db_name = "#{user_name}_production"
end

pass = 'koi8rus'

puts '---[ CREATE DATABASE ]------------------ '
puts "\t\t is_production = #{is_production}"
puts "\t\t branch_name = #{branch_name}"
puts "\t\t user_name = #{user_name}"
puts "\t\t db_name = #{db_name}"

begin
  client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => pass)
  client.query("CREATE DATABASE #{db_name} CHARACTER SET utf8 COLLATE utf8_unicode_ci;")
  client.query("GRANT ALL PRIVILEGES ON #{db_name}.* TO #{user_name}@localhost IDENTIFIED by '#{pass}';")
  client.query("FLUSH PRIVILEGES;")
rescue => e
  puts "\t\t #{e}"
end

puts '---[ FILL DATABASE ]-------------------- '
%x`mysql -uroot -p #{db_name} < db.sql`
