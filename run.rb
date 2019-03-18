require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

michael = Manager.new("Michael Scott", "sales")

pam = michael.hire_employee("Pam Beesly", 50000)
jim = michael.hire_employee("Jim Halpert", 50500)

p pam.manager_name
p Employee.find_by_department("sales")

binding.pry
puts "done"
