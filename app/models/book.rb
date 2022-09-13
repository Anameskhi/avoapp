class Book < ApplicationRecord
  has_one_attached :photo
  validates :title, :author_id, presence: true
  
  belongs_to :author
end