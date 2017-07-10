# Courses Tracker.
# 	#Table have courses that you have completed already or courses in progress or  courses that you wish to study.
# 	#You can :
#                    #add new courses.
# 		#delete courses.
# 		#update course completion status or
# 		#display all courses


#require sqlite3
require "sqlite3"

#create the database
db = SQLite3::Database.new("courses.db")
#db.results_as_hash = true

#create database table
create_courses_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS courses_list (
  id INTEGER PRIMARY KEY,
  course_title VARCHAR(255),
  programming_language VARCHAR(255),
  source VARCHAR(255),
  completion_status BOOLEAN
)
SQL

# Insert course
add_course_cmd = <<-SQL
INSERT INTO courses_list (course_title, programming_language, source, completion_status) VALUES (?, ?, ?, ?)
SQL

#delete course
delete_course_cmd = <<-SQL
DELETE FROM courses_list WHERE id = ? OR course_title = ?
  SQL

#update table
update_course_cmd = <<-SQL
UPDATE courses_list SET completion_status  = 1 WHERE course_title = ?
  SQL


#Delete table

delete_course_cmd = <<-SQL
DELETE FROM courses_list WHERE course_title = ?;
SQL

#----------------------------------------------------------------------
#Methods to execute queries
#-----------------------------------------------------------------------

# add a course
def add_course(db, add_course_cmd, course_title, programming_language, source,completion_status)
  db.execute(add_course_cmd, [course_title, programming_language, source,completion_status])
end

#delete a course
def delete_course(db, delete_course_cmd, course_title)
  db.execute(delete_course_cmd, course_title)
end

#Update a course
def update_course(db, update_course_cmd, course_title)
  db.execute(update_course_cmd, course_title)

end


#Display courses
def display_courses_list(db)
  courses = db.execute("SELECT * FROM courses_list")

  #find max width of each column
  x1 = courses.max { |a,b| a[1].length <=> b[1].length}
  first_column = ['Course Title'.length, x1[1].length].max

  x2 = courses.max { |a,b| a[2].length <=> b[2].length}
  second_column = ['Programming Language'.length, x2[2].length].max

  x3 = courses.max { |a,b| a[3].length <=> b[3].length}
  third_column = ['Source'.length, x3[3].length].max


  fourth_column = 'Completion Status' .length #narrow width

  format = "%-5s %-#{first_column + 2}s %-#{second_column + 2}s %-#{third_column + 2}s %-#{fourth_column + 2}s" #table title format

  puts "\n" + format % ['Id','Course Title', 'Programming Language', 'Source', 'Completion Status*' ]
  puts "-" * (5 + first_column + second_column + third_column + fourth_column + 2*5) # equal to the heading width
  courses.each_with_index do |course, i|
    puts format % [ i + 1 , course[1], course[2], course[3], course[4] ]
  end
  puts "-" * (5 + first_column + second_column + third_column + fourth_column + 2*5)
  puts "* 1 is for completed course / 0 is for course not yet completed."
end


#CREATE THE TABLE
db.execute(create_courses_cmd)

#===================
#User Interface
#===================

puts "This is a database management program for courses.\n"
puts "Please choose from the following options:"
puts "i".rjust(5).ljust(10) + "-Adds new course"
puts "x".rjust(5).ljust(10," ")  + "-Deletes a course"
puts "u".rjust(5).ljust(10," ")   + "-Updates a course progress"
puts "d".rjust(5).ljust(10," ")  + "-Displays courses"
puts "q".rjust(5).ljust(10," ")   + "-Quits program"
puts "----" * 10

user_response = gets.chomp.downcase

while user_response != 'q'
  case user_response
  when 'i'
    puts "What is the title of the course?"
    course_title = gets.chomp
    puts "Which programming language is taught?(You can include programming languages/frameworks/scripting languages/etc)"
    programming_language = gets.chomp
    puts "Please provide the source for the course."
    source = gets.chomp
    puts "Please provide course progress status.( 1 if completed or 0 otherwise)"
    completion_status = gets.chomp.to_i
    add_course(db, add_course_cmd, course_title, programming_language, source,completion_status)
    puts "\nCourse added successfully.\n "
    puts "\nHere is your current course list: \n"
    display_courses_list(db)
  when 'x'
    puts "\nHere is your current list:\n"
    display_courses_list(db)
    puts "Which course would you like to delete? (provide course title)"
    course_title = gets.chomp

    delete_course(db, delete_course_cmd, course_title)

    puts "\nHere is your current course list: \n"
    display_courses_list(db)
  when 'u'
    puts "\nHere is your current course list:\n"
    display_courses_list(db)
    puts "Which course have you completed?(provide course title)"
    course_title = gets.chomp
    update_course(db, update_course_cmd, course_title)

    puts "\nHere are your current updated courses:\n"
    display_courses_list(db)

  when 'd'
    puts "\nHere are all of your courses:\n"
    display_courses_list(db)
  else
    puts "Unsupported request"
  end
  puts
  puts "====" * 10
  puts "\nWhat else do you want to do? "
  puts "Please choose from the following options:"
  puts "i".rjust(5).ljust(10) + "-Adds new course"
  puts "x".rjust(5).ljust(10," ")  + "-Deletes a course"
  puts "u".rjust(5).ljust(10," ")   + "-Updates a course progress"
  puts "d".rjust(5).ljust(10," ")  + "-Displays courses"
  puts "q".rjust(5).ljust(10," ")   + "-Quits program"
  puts "----" * 10
  user_response = gets.chomp.downcase

end

puts "\nThank you ! program exited."
