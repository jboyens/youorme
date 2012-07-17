class Kid < ActiveRecord::Base
  attr_accessible :name, :active, :address_attributes

  belongs_to :address
  accepts_nested_attributes_for :address, :allow_destroy => true
end
