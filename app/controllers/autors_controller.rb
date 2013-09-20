class AutorsController < ApplicationController
	def index
		@autor = Autor.all
	end
	def new
		@autor = Autor.new
	end
	def create
		@autor = Autor.new(params[:autor])
		if @autor.save
			redirect_to @autor, :notice => 'Autor Cadastrado'
			
		else
			render :new
		end
	end
	def show
		@autor = Autor.find(params[:id])
	end

	def edit
		@autor = Autor.find(params[:id])
	end

	def update
		@autor = Autor.find(params[:id])
		if @autor.update_attributes(params[:autor])
			redirect_to @autor, :notice => 'Cadastro atualizado com sucesso'
		else
			render :update
		end
	end
	def destroy
		@autor = Autor.find(params[:id])
		if @autor.destroy
			redirect_to @autor, :notice => 'Cadastro apagado'
		else
			render :index
		end
	end
end
