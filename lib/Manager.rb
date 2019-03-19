class Manager

    attr_accessor :name, :department
    attr_reader :age, :employees

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        @employees << Employee.new(name, salary, self.name)
    end

    def self.all_departments
        (Manager.all.collect {|manager| manager.department}).uniq()
    end

    def self.average_age
        age = 0
        (Manager.all.each {|manager| age += manager.age})
        return age/Manager.all.length
    end

end
