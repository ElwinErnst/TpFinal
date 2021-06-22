class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :state
      t.date :start_date
      t.date :end_date
      t.float :cost
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
