class Kid < ActiveRecord::Base
  attr_accessible :name, :active, :address_attributes, :pickup_id

  belongs_to :address
  belongs_to :pickup, :class_name => 'User'

  accepts_nested_attributes_for :address, :allow_destroy => true
end
