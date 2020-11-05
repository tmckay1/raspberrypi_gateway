class BestFriendLightsController < ApplicationController
  def get_color_index
    render json: { color_index: BestFriendLightHelper.get_color_index() }
  end

  def set_color_index
    BestFriendLightHelper.set_color_index(params.require(:color_index))
    render json: { color_index: BestFriendLightHelper.get_color_index() }
  end
end