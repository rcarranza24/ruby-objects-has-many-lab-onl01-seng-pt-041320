class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end


  def autho_name
    if self.author
      self.author.name
    else
      nil
    end
  end

  def self.all
    @@all
  end
end
