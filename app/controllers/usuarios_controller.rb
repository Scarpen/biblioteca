class UsuariosController < ApplicationController
		def index
		@usuario = Usuario.all
	end
	def new
		@usuario = Usuario.new
		3.times { @usuarios.autors.build }
	end
	def create
		@usuario = Usuario.new(params[:usuario])
		if @usuarioso.save
			redirect_to @usuario, :notice => 'Usuario Cadastrado'
			
		else
			render :new
		end
	end
	def show
		@usuarios = Usuario.new
		@usuario  = Usuario.all

		@usuario.each do |user|
			if(@usuarios.login = user.login)
				if(@usuarios.senha = user.senha)
					redirect_to endbibli_path, :notice => 'Login feito com sucesso'
				end
			end
		end
	end

	def edit
		@usuarios= Usuario.find(params[:id])
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
