class DaysController < ApplicationController
   def index
  	#p params[:q]
  	@search = Day.search(params[:q])
    @days = @search.result
	# Initial
	#@energies = Energie.all
  end
end
