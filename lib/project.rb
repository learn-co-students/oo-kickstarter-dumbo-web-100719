class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(new_backer)
    new_backer
    @backers << new_backer
    new_backer.backed_projects << self
  end

end
