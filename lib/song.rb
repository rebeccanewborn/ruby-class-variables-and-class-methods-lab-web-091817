require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    # @@artists.find {|a| a == artist} || @@artists << artist
    # @@genres.find{|g| g== genre} || @@genres << genre
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    hash = {}.tap {|hash|
    @@artists.each do |artist|
      hash[artist] = ((hash[artist] || 0) + 1)
    end }
  end

  def self.genre_count
    hash = {}.tap {|hash|
    @@genres.each do |genre|
      hash[genre] = ((hash[genre] || 0) + 1)
    end }
  end
end
