class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  # listing exestence depends on excestence of user who created it. ifuser deleted listing will automatically deleted
  has_many :listings, dependent: :destroy       
end
