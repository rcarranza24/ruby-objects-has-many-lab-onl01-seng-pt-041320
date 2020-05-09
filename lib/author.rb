class Author

  attr_accessor :name, :posts



  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select do |post|
      post.author == self
  end
 end

 def add_post (post)
   post.author = self
 end

 def add_post_by_name(post_name)
   poster = Post.new(post_name)
   add_post(poster)
 end
  end

  def self.post_count
    @@post_count
  end
end
