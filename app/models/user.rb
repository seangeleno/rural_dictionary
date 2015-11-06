class User < ActiveRecord::Base
  has_many :definitions
  has_many :words, dependent: :destroy
  has_many :definitions, :through => :words
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
