Rails.application.routes.draw do

  root 'static_pages#home'
  get 'rooms'   => 'static_pages#rooms'
  get 'where'   => 'static_pages#where'
  get 'things'  => 'static_pages#things'
  get 'gallery' => 'static_pages#gallery'
  get 'about'   => 'static_pages#about'
  resources :contacts, only: [:new, :create]

end
