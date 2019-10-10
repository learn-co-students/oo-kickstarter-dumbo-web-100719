class Backer

  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    # binding.pry
    self.backed_projects[0].backers << self
    # Project.backers << Backer
  end



end
