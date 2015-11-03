class Word < ActiveRecord::Base
  belongs_to :user
  has_many :definitions, :through => :users

  def date_published
      created_at.localtime.strftime("%A, %B %-d, %Y at %l:%M %p")
    end
end
