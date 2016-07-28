class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone_number
      t.integer :times_fd_off
      t.belongs_to :user
      t.timestamp(null: false)
    end
  end
end
