Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  get '/memory_game',           to: 'memory_game#index'
  get '/get_name_of_character', to: 'memory_game#get_name_of_character'

end
