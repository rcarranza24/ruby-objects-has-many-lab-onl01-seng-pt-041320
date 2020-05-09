class Author

  attr_accessor :name, :posts


  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select do |post|
      post.author == self
  end
 end

 def add_post(post)
     post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
end
end 
