MReservation::Engine.routes.draw do
  resources :canceled_reservations
  resources :resources
  resources :reservations
end
