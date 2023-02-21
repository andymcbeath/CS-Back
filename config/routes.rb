Rails.application.routes.draw do
  get "contacts" => "contacts#index"
  post "/contacts" => "contacts#create"
  patch "/contacts/:id" => "contacts#update"
  get "bookings" => "bookings#index"
  post "/bookings" => "bookings#create"
end
