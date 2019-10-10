class Backer
    attr_accessor :name, :backed_projects
​
    @@all = []
​
    def initialize(name)
        @backed_projects = []
        @name = name
        @@all << self 
    end
​
    def back_project(project)
        @backed_projects << project
        Project.all.map do |each_project|
            if each_project == project 
                each_project.backers << self 
            end 
        end 
    end
​
    def self.all
        @@all 
    end 
end 