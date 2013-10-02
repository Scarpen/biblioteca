class UsuarioSession
	include ActiveModel::Validations
	include ActiveModel::Conversion

	attr_accessor :login, :senha
	validates_presence_of :login, :senha
	def persisted?
		false
	end
	def initialize(session, attributes={})
		@session = session
		@login = attributes[:login]
		@senha = attributes[:senha]
	end
	def authenticate
		usuario = Usuario.authenticate(@login, @senha)
		if usuario.present?
		store(usuario)
		else
		errors.add(:base, :invalid_login)
		false
		end
	end
	def store(usuario)
		@session[:usuario_id] = usuario.id
	end
end