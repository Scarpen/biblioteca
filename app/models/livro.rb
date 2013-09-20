class Livro < ActiveRecord::Base

  has_and_belongs_to_many :autors
  has_and_belongs_to_many :listbiblis
  accepts_nested_attributes_for :autors, :reject_if => lambda{ |a| a[:nome].blank? }, :allow_destroy => true
  attr_accessible :data, :editora, :titulo, :pais, :autor_ids, :listbibli_ids, :autors_attributes


end
