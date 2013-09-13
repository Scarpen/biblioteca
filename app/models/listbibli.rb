class Listbibli < ActiveRecord::Base
  belongs_to :endbibli
  has_and_belongs_to_many :livros
  attr_accessible :nome, :telefone, :endbibli_id, :livro_ids
  validates_presence_of :nome, :telefone
end
