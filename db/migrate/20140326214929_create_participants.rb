class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :event_id
      t.string :phone_number

      t.timestamps
    end
  end
end
