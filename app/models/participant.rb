class Participant < ActiveRecord::Base
  attr_accessible :email, :event_id, :first_name, :last_name, :phone_number

  validates_presence_of :event
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email

  belongs_to :event

end
