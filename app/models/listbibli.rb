class Listbibli < ActiveRecord::Base
  belongs_to :endbibli
  attr_accessible :nome, :telefone, :endbibli_id
  validates_presence_of :nome, :telefone
end
