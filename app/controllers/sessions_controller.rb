class SessionsController < ApplicationController
  def new
  end
	def create
		usuario = Usuario.authenticate(params[:login], params[:senha])
		if usuario
			session["usuario_id"] = usuario.id
			redirect_to new_session_path, :notice => "Login com sucesso!"
		else
			redirect_to new_session_path, :notice => "Usuario ou Senha incorreta"
		end
	end
	def destroy
		session["usuario_id"] = nil
		redirect_to new_session_path, :notice => "Deslogado!"
	end
end
