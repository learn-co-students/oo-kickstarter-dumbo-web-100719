class Project

attr_accessor :title, :backers
@@all =[]

def initialize(title)
    @title= title
    @backers = []
    @@all << self
end

def add_backer(backer)
    @backer = backer
    backers << backer
    Backer.all.map do |each_backer|
        if each_backer == backer
        each_backer.backed_projects << self
        end
        end
end

def  self.all
    @@all
end


end