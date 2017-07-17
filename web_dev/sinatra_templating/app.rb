# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end
#===================================================================================================
# create a new application to create a user log in
#===================================================================================================
db2 = SQLite3::Database.new("users.db")
db2.results_as_hash = true

users = <<-SQL
  CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
  );
SQL

db2.execute(users)

get '/user' do
  erb :user
end

get '/login_success' do
  @users = db2.execute("SELECT * FROM users")
  erb :login_success
end

post '/user' do
  db2.execute("INSERT INTO users (name, email, password) VALUES (?,?,?)", [params['name'], params['email'], params['password']])
  redirect '/login_success'
end

# add static resources