class Message < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :users

  validates_uniqueness_of :keyword
end
