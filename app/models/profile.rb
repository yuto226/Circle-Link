class Profile < ApplicationRecord
  belongs_to:admin
  belongs_to:genre
  belongs_to:kind

  validates :prof, presence: true,length: { maximum: 300 }
  validates :num, numericality: { only_integer: true } # 数値のみ有効
  validates :place, presence: true
  validates :week_day, presence: true
  validates :time_start,presence: true
  validates :time_end,presence:true
with_options if: :select_second_week? do |v|
    v.validates :week_day2,presence:true
    v.validates :time_start2,presence: true
    v.validates :time_end2,presence:true
end

  mount_uploader :image, ImageUploader
  mount_uploader :line_image, ImageUploader

  def select_second_week?
    :have_second_week == true
  end

end
