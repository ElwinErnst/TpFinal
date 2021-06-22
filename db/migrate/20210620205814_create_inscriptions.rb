class CreateInscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :inscriptions do |t|
      t.integer :state
      t.float :payment
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
