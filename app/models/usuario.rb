class Usuario < ActiveRecord::Base
  attr_accessible :login, :senha

  def self.authenticate(login, senha)
	usuario = find_by_login(login)
	if usuario && usuario.senha == senha
		usuario
	else
		nil
	end
  end
end
