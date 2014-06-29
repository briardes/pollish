class RemoveChoicesFromPolls < ActiveRecord::Migration
  def change
    remove_column :polls, :choices, :integer
  end
end
