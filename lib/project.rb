require 'pry'
class Project
    attr_reader :title, :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        @backers << backer
        # this is important! this allows us to access the instance (backer) attributes
        # name and project[], so we are able to insert into the array <--(self), which is an instance of project
        # we are inserting the whole instance object into backer
        backer.backed_projects << self
    end
end
