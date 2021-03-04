class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
