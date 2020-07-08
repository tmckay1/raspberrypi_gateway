Rails.application.routes.draw do
  resources :message_board, only: [] do
    collection do
      post :display_message
    end
  end
end
