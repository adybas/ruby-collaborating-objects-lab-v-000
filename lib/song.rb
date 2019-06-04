class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    split_name = filename.split(" - ")
    new_song = self.new(split_name[1])
    new_artist = Artist.find_or_create_by_name(split_name[0])
    new_song.artist_name() = new_artist
    new_song
  end
end
