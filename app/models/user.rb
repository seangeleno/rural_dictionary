class User < ActiveRecord::Base
  has_many :definitions, dependent: :destroy
  has_many :words, dependent: :destroy
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
