Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do

    #CREATE

    # 1. New (blank) form

    get '/players/new' => 'players#new'

    #2. Form submit, create, redirect

    post '/players' => 'players#create'


    #READ

    # 1. Index of planets

    get '/players' => 'players#index'

    #2. show page for one planet

    get '/players/:id' => 'players#show', as: 'player'


    # #UPDATE

    # 1. Pre-filled edit form

    get '/players/:id/edit' => 'players#edit', as: 'player_edit'

    #2. Form submit, update, redirect

    post '/players/:id' => 'players#update'

    #DESTROY
    
    get '/players/:id/delete' => 'players#destroy', as: 'player_destroy'

  end

end
