Rails.application.routes.draw do
  get 'profile/index'
  get 'web/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "web#index"
end
