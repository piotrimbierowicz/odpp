class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.boolean :is_additional_event, :default => false
      t.integer :order

      t.timestamps
    end
  end
end
