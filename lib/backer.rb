require 'pry'

class Backer
    attr_reader :name
    attr_accessor :backed_projects
    def initialize(name)
        @name = name
        @backed_projects = []
    
    end

    def back_project(project)       
         @backed_projects << project
         project.backers << self
        #  shoveling project into the backed_projects array
        #shoveling into the projects backers array
        
        #  binding.pry   
    end



    
    

end