class CreateKidsTable < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :name
      t.references :address

      t.timestamps
    end
  end
end
