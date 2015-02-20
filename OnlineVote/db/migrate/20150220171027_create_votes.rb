class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :voter_id
      t.string :senator_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
