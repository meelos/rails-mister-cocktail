Rails.application.routes.draw do
  resources :cocktails, except:[:edit,:update, :destroy]
  # For details on th e DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
