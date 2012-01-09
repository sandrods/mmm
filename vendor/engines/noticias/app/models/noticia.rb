class Noticia < ActiveRecord::Base

  acts_as_indexed :fields => [:titulo, :corpo]

  validates :titulo, :presence => true, :uniqueness => true
  
  belongs_to :imagem, :class_name => 'Image'
end
