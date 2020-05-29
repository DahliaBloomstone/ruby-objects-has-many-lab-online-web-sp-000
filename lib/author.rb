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

def add_post(post)
post.author = self
end

def add_post_by_title(title)
post = Post.new(title)
add_post(author)
end

def self.post_count
@@post_count
end
end
