class Address < ActiveRecord::Base
  attr_accessible :city, :line1, :line2, :state, :zip

  def blank?
    [:city, :line1, :state, :zip].map do |attr|
      self.send(attr).blank?
    end.any?
  end
end
