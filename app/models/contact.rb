class Contact < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user

  validates :phone, presence: true
  validates_uniqueness_of :phone_number

end
