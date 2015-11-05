class User < ActiveRecord::Base
  has_many :definitions, dependent: :destroy
  has_many :words
  has_many :definitions, :through => :words
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
