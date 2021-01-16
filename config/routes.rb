Rails.application.routes.draw do
  resources :sendgrid_emails, only: [:create]
end
