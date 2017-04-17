Rails.application.routes.draw do
  get 'onduleur_energy/index'

  get 'onduleur_energy/import'

  resources :onduleurs
  resources :onduleur_energy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
