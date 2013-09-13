class Livro < ActiveRecord::Base
  has_and_belongs_to_many :autors
  has_and_belongs_to_many :listbiblis
  attr_accessible :data, :editora, :nome, :pais, :autor_ids, :listbibli_ids
end
