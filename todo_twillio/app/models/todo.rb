class Todo < ActiveRecord::Base

  # class << self; attr_accessor :instances; end
  
  # attr_accessor :id, :text, :date
  
  # def initialize(id=nil, text=nil, date=nil)

  #   @id = id
  #   @text = text
  #   @date = date

  #   self.class.instances ||= Array.new
  #   self.class.instances << self


  # end

  # def self.all
  #   instances ? instances.dup : []
  # end

end
