class Book < ApplicationRecord

	belongs_to :user
	has_one :category
	has_many :reviews
	validates :user, presence: true
end
