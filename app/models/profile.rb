class Profile < ApplicationRecord
  belongs_to:admin
  belongs_to:genre
  belongs_to:kind

  validates :prof, presence: true,length: { maximum: 300 }
  validates :num, numericality: { only_integer: true } # 数値のみ有効
  validates :place, presence: true

  mount_uploader :image, ImageUploader
  mount_uploader :line_image, ImageUploader
end
