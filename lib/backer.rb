require_relative 'project.rb'

require 'pry'

class Backer

    attr_accessor :backed_projects, :name

    def initialize(name)
        @name = name 
        @backed_projects = []
    end 

    def back_project(new_project)
        @backed_projects << new_project
        new_project.backers << self
    end 


    # def backers
    #     @backers
    # end








end 
# instance_a =Backer.new
# instance_b = Project.new(instance_a)