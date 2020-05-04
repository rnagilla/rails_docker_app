Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/increment_async", to: "home#increment_async"
  root to: 'home#index'
end
