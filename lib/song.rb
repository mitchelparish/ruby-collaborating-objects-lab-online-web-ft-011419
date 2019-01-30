require 'pry'

class Song
  @@all = []
  attr_accessor :name, :artist 

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name) 
    binding.pry 
  end
  



end
