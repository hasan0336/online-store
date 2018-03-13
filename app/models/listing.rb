class Listing < ApplicationRecord
	has_attached_file :image, styles: { medium: "200x>", thumb: "100x100>" }, default_url: "default.jpg",
	storage: :cloudinary,
  :path => ':id/:style/:filename'
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	validates :name, :description, :price , presence: true
	# checks if price is a number and it is greater than 0
	validates :price, numericality: { greater_than: 0 }
	validates_attachment_presence :image
end
