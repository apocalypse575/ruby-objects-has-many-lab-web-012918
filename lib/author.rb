require 'pry'

class Author

  @@posts = []
  @@post_count = 0

  attr_accessor :name
  attr_reader :posts


  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    add_post(new_post)
  end

  def self.post_count
    @@post_count = @@posts.count
  end

end
