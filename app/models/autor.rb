class Autor < ActiveRecord::Base
  has_and_belongs_to_many :livros
  attr_accessible :data_nascimento, :nome
end
