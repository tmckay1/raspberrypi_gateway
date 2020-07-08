Rails.application.routes.draw do
  resources :message_boards, only: [] do
    collection do
      post :display_message
    end
  end
end
