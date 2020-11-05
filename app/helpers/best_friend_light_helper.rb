
module BestFriendLightHelper
  def self.get_color_index()
    Rails.cache.fetch(:color_index) { 0 }.to_i
  end

  def self.set_color_index(color_index)
    Rails.cache.write(:color_index, color_index)
  end
end