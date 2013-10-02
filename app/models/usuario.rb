class Usuario < ActiveRecord::Base
  attr_accessible :login, :senha

  def self.authenticate(login, senha)
  	confirmed.
	find_by_login(login).
	try(:authenticate, senha)
	end
end
