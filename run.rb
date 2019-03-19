require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
big_boss = Manager.new("Snake", "Snake fam", 22)
small_boss = Manager.new("jimmy", "cold foods", 72)
side_boss = Manager.new("billy", "hot foods", 22)
new_manager = Manager.new("Dario", "desserts", 22)
old_manager = Manager.new("Ghram", "free", 22)
nice_manager = Manager.new("code", "difiif", 22)


lazy = Employee.new("Snake", 10, big_boss)
dopy = Employee.new("jimmy", 12, small_boss)
angry = Employee.new("billy", 22, side_boss)
hyper = Employee.new("Dario", 23, new_manager)
daiper = Employee.new("Ghram", 0, old_manager)
coder = Employee.new("code", 50, nice_manager)
cany = Employee.new("cany", 10, big_boss)
fruty = Employee.new("fruty", 12, small_boss)
joey = Employee.new("joey", 22, side_boss)
sebrina = Employee.new("sebrina", 23, new_manager)
Danny = Employee.new("Danny", 0, old_manager)
Daniell = Employee.new("Daniell", 50, nice_manager)
Daniel = Employee.new("Daniel", 10, big_boss)
Dannys = Employee.new("Dannys", 12, small_boss)
wowDude = Employee.new("wowDude", 22, side_boss)
sitcomMan = Employee.new("sitcomMan", 23, new_manager)
natasha = Employee.new("natasha", 0, old_manager)
hacker = Employee.new("hacker", 50, nice_manager)
hackie = Employee.new("hackie", 10, big_boss)

binding.pry
puts "done"
