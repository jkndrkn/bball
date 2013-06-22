Bball::Application.routes.draw do
  root 'player_statistics#index'

  resource :player_statistics
end
