class Book < ApplicationRecord

	belongs_to :user
	has_one :category
	has_many :reviews
	mount_uploader :picture, PictureUploader
	validates :user, presence: true
end
