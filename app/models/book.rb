class Book < ApplicationRecord
  belongs_to :library, class_name: "Library", foreign_key: "library_id"

  validates :title, presence: true
  validates :author, presence: true
end
