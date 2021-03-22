class Backer

  attr_reader :name
  
  def initialize(name)
      @name = name
  end

  def  back_project(project)
      ProjectBacker.new(project, self)
  end

  def backed_projects
   backed_p = ProjectBacker.all.select do |projects|
      projects.backer == self
      #binding.pry
   end
   backed_p.map do |p|
      p.project
      #binding.pry
   end
  end
end