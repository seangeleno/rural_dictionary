class Word < ActiveRecord::Base
  belongs_to :user
  has_many :definitions, :through => :users
end
