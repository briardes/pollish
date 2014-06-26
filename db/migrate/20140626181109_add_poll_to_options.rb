class AddPollToOptions < ActiveRecord::Migration
  def change
    add_reference :options, :poll, index: true
  end
end
