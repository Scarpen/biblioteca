class ListbiblisController < ApplicationController
		def index
		@listbibli = Listbibli.all
	end
	def new
		
		@listbibli = Listbibli.new
	end
	def create
		@listbibli = Listbibli.new(params[:listbibli])
		if @listbibli.save
			redirect_to @listbibli, :notice => 'Biblioteca Cadastrada'
			
		else
			render :new
		end
	end
	def show
		@listbibli = Listbibli.find(params[:id])
	end

	def edit
		@listbibli = Listbibli.find(params[:id])
		@endbibli = Endbibli.all
	end

	def update
		@listbibli = Listbibli.find(params[:id])
		if @listbibli.update_attributes(params[:listbibli])
			redirect_to @listbibli, :notice => 'Cadastro atualizado com sucesso'
		else
			render :update
		end
	end
	def destroy
		@listbibli = Listbibli.find(params[:id])
		if @listbibli.destroy
			redirect_to @listbibli, :notice => 'Cadastro apagado'
		else
			render :index
		end
	end

end