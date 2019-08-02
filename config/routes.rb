Rails.application.routes.draw do
  resources :cocktails, except:[:edit,:update, :destroy]
  # get 'cocktails', to:'cocktails#index'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # get 'cocktails/create'
  # get 'cocktails/edit'
  # get 'cocktails/update'
  # get 'cocktails/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
