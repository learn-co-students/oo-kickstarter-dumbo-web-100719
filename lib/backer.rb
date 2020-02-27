require 'pry'
class Backer
    attr_reader :name, :backed_projects

    def initialize(name)
        # create an empty array, we have attr_reader so we can read elements
        # storing name attribute for this backer
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        # ^^ project is an instance of Project class
        # this instance is passed when it's called by backer and stored in array
        @backed_projects << project
        # this is important! this allows us to access the instance (project) attributes
        # title and backers[], so we are able to insert into the array <--(self), which is an instance of backer
        # we are inserting the whole instance object into projects
        project.backers << self
    end
end

backer = Backer.new("Avi")
spencer = Backer.new("Spencer")
magic = Project.new("Magic The Gathering Thing")

logan = Backer.new("Logan")
hoverboard = Project.new("Awesome Hoverboard")
logan.back_project(hoverboard)

binding.pry

