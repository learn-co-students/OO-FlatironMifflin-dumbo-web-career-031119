require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
danko = Manager.new("Daniel", "IT", 26)
bruce = Manager.new("Bruce", "HR", 24)
tim = Employee.new("Tim", 100000, danko)
sarah = Employee.new("Sarah", 50000, danko)
david = Employee.new("David", 50500, danko)


binding.pry
puts "done"
