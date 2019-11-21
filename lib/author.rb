require "pry"

class Author

    attr_accessor :name, :posts

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|post| post.author = self}
    end

    def add_post(current_post_object)
        current_post_object.author = self
    end

    def add_post_by_title(title)
        added_post = Post.new(title)
        added_post.author = self
    end

    def self.post_count
        Post.all.count
    end

end