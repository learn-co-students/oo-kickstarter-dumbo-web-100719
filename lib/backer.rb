require 'pry'
class Backer
    attr_reader :name, :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(new_project)
        # binding.pry
        new_project
        
        # if new_project.class == Project
        @backed_projects << new_project
        # end
        # binding.pry
        new_project.backers << self
        # binding.pry
        # new_project.backers.merge(@backed_projects)

    end

end