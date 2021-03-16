require_relative "./employee.rb"


class Manager < Employee 

    def initialize
        @employees_managed = []
        super
        #holds an array of employees assigned to the manager 
        #manager must report to higher level 
    end 

    def bonus 
         #bonus = (sum of salaries of employees_managed) * multiplier
    end 





end 

# Employee.new 
# if employee.title.include?("manager")
# create Manager.new with same attributes as employees 
#if not
#proceed with employee attributes only