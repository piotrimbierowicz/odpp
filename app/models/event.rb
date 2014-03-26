class Event < ActiveRecord::Base
  attr_accessible :description, :name, :order, :is_additional_event
  validates_presence_of :name

  has_many :participants

end
