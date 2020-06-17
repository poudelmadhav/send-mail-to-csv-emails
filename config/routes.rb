Rails.application.routes.draw do
  resources :mail_senders, only: %i[new create]
  root 'mail_senders#new'
end
