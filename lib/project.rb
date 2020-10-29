class Project
   attr_reader :title
   @@all = []
   def initialize(title)
    @title = title
    @@all << self
   end
   def add_backer(backer)
    ProjectBacker.new(self, backer)
   end
   def self.all
    @@all
   end
   def backers
    project_backers = ProjectBacker.all.select do |pbackers| 
        pbackers.project == self
    end
    project_backers.map do |pbackers|
        pbackers.backer
    end
  end

end