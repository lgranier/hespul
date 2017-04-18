class OnduleurEnergyController < ApplicationController
  def index
  	#@q = OnduleurEnergy.ransack(params[:q])
    #@orders = @q.result.includes(:order).page(params[:page]).per(params[:per])
  	#Essai 1
  	@search = OnduleurEnergy.search(params[:q])
    @onduleurEnergies = @search.result
	# Initial
	#@onduleurEnergies = OnduleurEnergy.all
  end

  def import
	begin 
		OnduleurEnergy.import(params[:file]) 
		redirect_to root_url, notice: "Energies importés !!!"
	rescue 
		redirect_to root_url, notice: "Format CSV invalide"
	end 
	
  end
end
