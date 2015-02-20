class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :staffer_id
      t.text :bill_text
      t.integer :vote_id

      t.timestamps null: false
    end
  end
end
