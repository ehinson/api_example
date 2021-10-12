class Library < ApplicationRecord
    has_many :books, class_name: "Book", foreign_key: "book_id"

    validates :name, presence: true
end
