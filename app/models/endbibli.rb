class Endbibli < ActiveRecord::Base
	has_one :listbibli
    attr_accessible :rua, :bairro, :numero
  	validates_presence_of :rua
  	validates_presence_of :bairro
  	validates_presence_of :numero
end
