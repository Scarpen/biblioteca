class Usuario < ActiveRecord::Base
  attr_accessible :login, :senha
end
