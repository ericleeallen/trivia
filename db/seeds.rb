# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Quiz.create(:title => 'My First Ever Quiz', :question => 'This is my first question', :difficulty => 2)

Question.create(:question => 'What is the name of Thomas Jefferson\'s house?', :answer => 'Monticello', :correctanswer => 'b', :difficulty => 2)