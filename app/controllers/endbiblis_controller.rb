class EndbiblisController < ApplicationController
	def index
		@endbibli = Endbibli.all 
	end
	def new
		@endbibli = Endbibli.new
	end
	def create
		@endbibli = Endbibli.new(params[:endbibli])
		
		if @endbibli.save


			redirect_to @endbibli, :notice => 'Cadastro criado'
			
		else

			render :new
		end
	end
	def show
		@endbibli = Endbibli.find(params[:id])
	end

	def edit
		@endbibli = Endbibli.find(params[:id])
	end

	def update
		@endbibli = Endbibli.find(params[:id])
		if @endbibli.update_attributes(params[:endbibli])
			redirect_to @endbibli, :notice => 'Cadastro atualizado com sucesso'
		else
			render :update
		end
	end
	def destroy
		@endbibli = Endbibli.find(params[:id])
		if @endbibli.destroy
			redirect_to @endbibli, :notice => 'Cadastro apagado'
		else
			render :index
		end
	end
end