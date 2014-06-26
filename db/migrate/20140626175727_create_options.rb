class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :answer
      t.integer :count

      t.timestamps
    end
  end
end
