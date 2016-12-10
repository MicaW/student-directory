#lets put all students into an array
def input_students
  puts "Please enter the name of the student"
  #create an empty array
students = []
#get the first name
name = gets.chomp
#while the name is not empty, repeat this code
while !name.empty? do
  #add the student hash to the array
  students << {name: name}
  puts "Thank you, now we need some more information about the student"
  puts "Which cohort is the student in?"
  cohort = gets.chomp.to_sym
  cohort = :january if cohort.empty?
  students << {cohort: cohort}
  puts "Thank you, we now have #{students.count}."
  puts "Add another student by typing their name, or press return twice to exit"
  #get another name from the user
  name = gets.chomp
end
#return the array of students
students
end


def print_header
puts "The students of Villains Academy"
puts "--------------"
end

def print_students(students)
 students.each do |students|
  puts "#{students[:name]} in (#{students[:cohort]} cohort}"
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print_students(students)
print_footer(students)
