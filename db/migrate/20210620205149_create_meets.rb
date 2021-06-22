class CreateMeets < ActiveRecord::Migration[6.1]
  def change
    create_table :meets do |t|
      t.string :name
      t.date :date
      t.time :start_time
      t.time :end_time
      t.references :event, null: false, foreign_key: true
      t.references :speaker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
