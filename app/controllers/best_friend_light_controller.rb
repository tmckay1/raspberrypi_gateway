class BestFriendLightController < ApplicationController
  def get_color_index
    render json: { color_index: BestFriendLightHelper.instance.color_index }
  end

  def set_color_index
    BestFriendLightHelper.instance.color_index = params.require(:color_index)
    render json: { color_index: BestFriendLightHelper.instance.color_index }
  end
end