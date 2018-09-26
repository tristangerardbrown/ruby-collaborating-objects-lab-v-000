class MP3Importer
  attr_accessor :path, :files, :songs

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.entries(path).each do |file|
      unless file == "." || file == ".."
        @files << file
      end
    end
    @files
  end

  def import
    files.each do |filename| Song.new_by_filename(filename)
    end
  end

end
