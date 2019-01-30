class MP3Importer
  attr_reader :file

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.chdir(@path) do
      Dir.glob('*.mp3')
    end
  end 

  def import
    files.each do |file|
      Song.new_by_filename(file)
   end
  end
end
