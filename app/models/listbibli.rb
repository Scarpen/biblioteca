class Listbibli < ActiveRecord::Base
  belongs_to :endbibli
  has_and_belongs_to_many :livros
  attr_accessible :nome, :telefone, :endbibli_id, :livro_ids
  validates_presence_of :nome, :telefone, :endbibli_id
    private
 # def validate_presence_of_more_than_one_restaurante
  #    errors.add("listbiblis"
   #     "deve haver ao menos uma listbiblis") if listbiblis.empty?
  #end
end
