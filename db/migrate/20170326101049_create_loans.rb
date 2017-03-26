class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.string :name, null: false
      t.float :amoung, null: false
      t.date :date, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
