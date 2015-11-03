class Definition < ActiveRecord::Base
  belongs_to :user
  belongs_to :words
  has_many :words, through: :user
end
