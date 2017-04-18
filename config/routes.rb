Rails.application.routes.draw do
  get 'days/index'

  get 'energies/index'

  get 'energies/import'

  #get 'onduleur_energy/index'

  #get 'onduleur_energy/import'

  resources :onduleurs
  resources :energies do 
  	collection { post :import, :search }
  end 
  resources :days

  root to: "energies#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
