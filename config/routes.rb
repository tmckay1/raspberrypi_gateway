Rails.application.routes.draw do
  resources :best_friend_lights, only: [] do
    collection do
      get :get_color_index
      post :set_color_index
    end
  end

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
