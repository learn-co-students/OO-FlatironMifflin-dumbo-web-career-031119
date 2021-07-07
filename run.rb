require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


Art_Vandalay = Manager.new("Art", "Sales", 38)
Blake = Employee.new("Blake", 32000, "Art")
Anders = Employee.new("Anders", 33000, "Art")
Art_Vandalay.hire_employee("Adam", 31000)

Rilakkuma = Manager.new("Kuma", "Food", 7)
Korilakkuma = Employee.new("Korilakkuma", 62000, "Kuma")
Rilakkuma.hire_employee("Kiiroitori", 60000)


binding.pry
puts "done"
