class DropColumnStateEvent < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :state
  end
end
