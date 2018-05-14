class Author
attr_accessor :name

@@all_posts = 0 
def initialize(name)
  @name = name
  @posts = []
end

def posts
  @posts
end

def add_post(post)
  @@all_posts += 1
  @posts << post
  post.author = self
end

def add_post_by_title(post_title)
  p = Post.new(post_title)
  self.add_post(p)
  p
end

def self.post_count
  @@all_posts

end 


end
