class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        #@artist = artist
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        return nil if self.artist == nil
        self.artist.name
    end

end