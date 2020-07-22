Rails.application.routes.draw do
  resources :message_boards, only: [] do
    collection do
      post :display_message
    end
  end

  resources :score_boards, only: [] do
    collection do
      post :change_score
    end
  end
end
