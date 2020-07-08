Rails.application.routes.draw do
  resources :message_board do
    collection do
      post :display_message
    end
  end
end
