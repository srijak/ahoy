Rails.application.routes.draw do
  mount Ahoy::Engine => "/t"
end

Ahoy::Engine.routes.draw do
  scope module: "ahoy" do
    resources :visits, only: [:create]
    resources :events, only: [:create]
  end
end
