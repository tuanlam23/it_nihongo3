class Book < ApplicationRecord
  ratyrate_rateable "quality"

	mount_base64_uploader :picture, PhotoBookUploader
	belongs_to :user
  belongs_to :category
	has_many :reviews
  has_many :likes
  has_many :liked_user, through: :likes, source: :user
  has_many :comments
	validates :user, presence: true
	validates :title, presence: true
	validates :author, presence: true
	validates :issue_date, presence: true
	validates :publishing_company, presence: true
	validates :description, presence: true
	validates :category_id, presence: true

  def self.search(search_param)
    where('title LIKE ?', "%#{search_param}%")
  end
end
