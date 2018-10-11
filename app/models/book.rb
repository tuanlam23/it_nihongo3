class Book < ApplicationRecord
	belong_to :user
	has_one :category
	has_many :reviews
end
