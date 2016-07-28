class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :keyword
      t.timestamp(null: false)
    end
  end
end
