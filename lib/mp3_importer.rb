class MP3Importer
  attr_reader :file

  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir(@path) do
      Dir.glob('*.mp3')
    end

  end


end
