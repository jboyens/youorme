class Address < ActiveRecord::Base
  attr_accessible :city, :line1, :line2, :state, :zip
end
