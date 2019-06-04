class MP3Importer
  attr_accessor :path

  def initialize(filename)
    @path = filename
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if{|element| element == "." || element == ".."}
  end

  def import
    files.each {|file|Song.new_by_filename(file)}
  end
end
