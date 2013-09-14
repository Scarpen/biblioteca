class Livro < ActiveRecord::Base
  has_and_belongs_to_many :autors
  has_and_belongs_to_many :listbiblis
  attr_accessible :data, :editora, :titulo, :pais, :autor_ids, :listbibli_ids
  private
 # def validate_presence_of_more_than_one_restaurante
  #    errors.add("listbiblis"
   #     "deve haver ao menos uma listbiblis") if listbiblis.empty?
  #end
end
