class AddActiveToKids < ActiveRecord::Migration
  def change
    add_column :kids, :active, :boolean, :default => true
  end
end
