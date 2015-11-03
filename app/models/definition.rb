class Definition < ActiveRecord::Base
  belongs_to :user
  belongs_to :words
  has_many :words, through: :user

  def date_published
      created_at.localtime.strftime("%A, %B %-d, %Y at %l:%M %p")
    end
end
