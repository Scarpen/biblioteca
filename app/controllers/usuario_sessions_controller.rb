class UsuarioSessionsController < ApplicationController
	def new
		@session = UsuarioSession.new(session)
	end
	def create
		@session = UsuarioSession.new(session, params[:usuario_session])
		if @session.authenticate
		redirect_to root_path
		else
		render :new
		end
	end
	def destroy
	end


end
