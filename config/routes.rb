Rails.application.routes.draw do

    devise_for :users, :controllers => {
      :registrations => "registrations"
    }
    resources :users, only: [:show]

  root 'home#home'
  get 'help' => 'home#help'
  get 'about' => 'home#about'
  get 'contact' => 'home#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
