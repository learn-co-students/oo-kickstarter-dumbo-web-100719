require 'pry'
class Backer
    attr_reader :name, :backed_projects

    def initialize(name)
        @backed_projects = []
        @name = name
    end

    def back_project(project)
        #insert instance of project into array
        #this instance is passed when it's called 
        @backed_projects << project
        project.backers << self
    end
end

backer = Backer.new("Avi")
spencer = Backer.new("Spencer")
magic = Project.new("Magic The Gathering Thing")

logan = Backer.new("Logan")
hoverboard = Project.new("Awesome Hoverboard")
logan.back_project(hoverboard)

# binding.pry

