class Profile < ApplicationRecord
  belongs_to:admin
  belongs_to:genre
  validates :prof, presence: true,length: { maximum: 200 }
  validates :num, numericality: { only_integer: true } # 数値のみ有効
  validates :place, presence: true

  mount_uploader :image, ImageUploader
end
