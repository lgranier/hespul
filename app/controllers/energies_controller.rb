class EnergiesController < ApplicationController
  def index
  	p params[:q]
  	@search = Energy.search(params[:q])
    @energies = @search.result
	# Initial
	#@energies = Energie.all
  end

  def import
	begin 
		Energy.import(params[:file]) 
		redirect_to root_url, notice: "Energies importés !!!"
	rescue 
		redirect_to root_url, notice: "Format CSV invalide"
	end 
	
  end
end
