class User < ApplicationRecord
  has_many :bicycles
  # has_many :bookings
  has_many :bookings_as_owner, through: :bicycles, source: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
