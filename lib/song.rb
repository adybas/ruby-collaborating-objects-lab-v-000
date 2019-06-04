class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    split_name = filename.split(" - ")
    new_song = self.new(split_name[1])
    new_artist = Artist.new(split_name[0])
  end
end
