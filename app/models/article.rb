class Article < ApplicationRecord
  belongs_to:admin
  validates :title, presence: true,length: { maximum: 20 }
  validates :contents, presence: true,length: { maximum: 300 }
end
