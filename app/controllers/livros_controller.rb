class LivrosController < ApplicationController
	def index
		@livro = Livro.all
	end
	def new
		@livro = Livro.new
		3.times { @livro.autors.build }
	end
	def create
		@livro = Livro.new(params[:livro])
		if @livro.save
			redirect_to @livro, :notice => 'Livro Cadastrado'
			
		else
			render :new
		end
	end
	def show
		@livro = Livro.find(params[:id])
	end

	def edit
		@livro= Livro.find(params[:id])
	end

	def update
		@livro = Livro.find(params[:id])
		if @livro.update_attributes(params[:livro])
			redirect_to @livro, :notice => 'Cadastro atualizado com sucesso'
		else
			render :update
		end
	end
	def destroy
		@livro = Livro.find(params[:id])
		if @livro.destroy
			redirect_to @livros, :notice => 'Cadastro apagado'
		else
			render :index
		end
	end

end
