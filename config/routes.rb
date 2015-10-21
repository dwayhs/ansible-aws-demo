Rails.application.routes.draw do
    root 'monitoring#sidekiq'

    get 'monitoring/sidekiq', to: 'monitoring#sidekiq'

    require 'sidekiq/web'
    require 'sidetiq/web'
    mount Sidekiq::Web => '/sidekiq'
end
