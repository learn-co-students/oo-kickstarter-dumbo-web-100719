require 'pry'
class Project
    attr_reader :title, :backers
    @@projects = []

    def initialize(title)
        @title = title
        @backers = []
        @@projects << self
    end

    def add_backer(backer)
        @backers << backer
        # binding.pry
        backer.backed_projects << self
    end

    def self.all
        @@projects
    end
end
