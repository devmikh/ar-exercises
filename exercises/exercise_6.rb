require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Mikhail", last_name: "Serebriakov", hourly_rate: 80)

@store2.employees.create(first_name: "Elon", last_name: "Musk", hourly_rate: 200)
@store2.employees.create(first_name: "Jeff", last_name: "Bezos", hourly_rate: 40)