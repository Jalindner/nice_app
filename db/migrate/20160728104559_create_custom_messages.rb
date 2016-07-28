class CreateCustomMessages < ActiveRecord::Migration
  def change
    create_table :custom_messages do |t|
      t.string :keyword
      t.string :content
      t.belongs_to :user

      t.timestamps(null: false)
    end
  end
end
