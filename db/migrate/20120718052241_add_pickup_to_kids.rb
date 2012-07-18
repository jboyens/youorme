class AddPickupToKids < ActiveRecord::Migration
  def change
    add_column :kids, :pickup_id, :integer
  end
end
