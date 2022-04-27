class Item < ApplicationRecord
  has_one_attached :image

  # 表示用のリサイズ済み画像を返す
  def display_image
    image.variant(resize_to_limit: [300, 300])
  end
end
