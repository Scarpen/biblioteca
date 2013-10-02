class UsuariosController < ApplicationController
		def index
		@usuario = Usuario.all
	end
	def new
		@usuario = Usuario.new
	end
	def create
		@usuario = Usuario.new(params[:usuario])
		if @usuario.save
			redirect_to @usuario, :notice => 'Usuario Cadastrado'
			
		else
			render :new
		end
	end
	def show
		@usuario = Usuario.new
	end

	def edit
		@usuario = Usuario.find(params[:id])
	end

	def update
		@usuario = Usuario.find(params[:id])
		if @usuario.update_attributes(params[:usuario])
			redirect_to @usuario, :notice => 'Cadastro atualizado com sucesso'
		else
			render :update
		end
	end
	def destroy
		@usuario = Usuario.find(params[:id])
		if @usuario.destroy
			redirect_to @usuario, :notice => 'Cadastro apagado'
		else
			render :index
		end
	end
end
