require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


dwight = Manager.new("dwight", "loading docks", 37)
jim = Manager.new("jim", "floor", 35)

employee1 = Employee.new("karen", 30_000, "jim")
employee2 = Employee.new("susan", 32_000, "dwight")
employee3 = Employee.new("tim", 200, "dwight")
employee4 = Employee.new("bob", 34_000, "jim")
employee5 = Employee.new("stacy", 35_000, "dwight")
employee6 = Employee.new("frank", 40_000, "jim")

binding.pry
puts "done"
