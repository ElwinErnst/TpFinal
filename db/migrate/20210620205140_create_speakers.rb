class CreateSpeakers < ActiveRecord::Migration[6.1]
  def change
    create_table :speakers do |t|
      t.string :first_name
      t.string :last_name
      t.text :biography
      t.text :work_experience
      t.string :university
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
