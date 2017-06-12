class MP3Importer
attr_accessor :path
attr_reader :files
  def initialize(file_path)
    @path = file_path
  end

  def files
    @files = Dir.entries(self.path)[2..-1]
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
