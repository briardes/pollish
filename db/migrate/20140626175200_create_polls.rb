class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :owner
      t.text :question
      t.integer :choices

      t.timestamps
    end
  end
end
