require "pry"

class Artist

    attr_accessor :name, :songs

    def initialize(name)
        @name = name
    end

    def self.song_count
        #binding.pry
        Song.all.count
    end

    def songs
        Song.all.select {|song| song.artist = self}
    end

    def add_song(current_song_object)
        current_song_object.artist = self
    end

    def add_song_by_name(song_name)
        added_song = Song.new(song_name)
        added_song.artist = self
    end

end