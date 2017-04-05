class Article < ApplicationRecord
  belongs_to:admin
  validates :title, presence: true,length: { maximum: 25 }
  validates :contents, presence: true,length: { maximum: 200 }
end
