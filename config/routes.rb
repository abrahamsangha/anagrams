Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :words, only: [:create, :destroy]
  delete 'words', to: 'words#destroy_all', controller: 'words'

  resources :anagrams, only: [:show]
end
