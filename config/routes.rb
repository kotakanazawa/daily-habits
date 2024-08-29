Rails.application.routes.draw do
  resources :habits, only: [ :show ] do
    member do
      post :plus # POST /habits/:id/plus
      post :minus # POST /habits/:id/minus
    end
  end
  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
