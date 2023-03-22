Rails.application.routes.draw do

  # Activities Routes
  #   GET /activities
  #   DELETE /activities/:id
  resources :activities, only: [:index, :destroy]
end
