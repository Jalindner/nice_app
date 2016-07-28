class CustomMessage < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user

  validates :keyword, presence: true
  validates_uniqueness_of :keyword

  validates :content, presence: true


end
