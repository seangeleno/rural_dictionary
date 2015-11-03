class User < ActiveRecord::Base
  has_many :definitions
  has_many :words
  has_many :definitions, :through => :words
end
