class Word < ActiveRecord::Base
  belongs_to :user
  has_many :definitions, dependent: :destroy
  accepts_nested_attributes_for :definitions, reject_if: :all_blank
  def date_published
      created_at.localtime.strftime("%A, %B %-d, %Y at %l:%M %p")
    end
end
