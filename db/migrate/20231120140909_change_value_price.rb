class ChangeValuePrice < ActiveRecord::Migration[7.1]
    def change
      create_table :consoles do |t|
        t.string :name
        t.string :brand
        t.integer :price
        t.references :user, null: false, foreign_key: true

        t.timestamps
      end
    end
end
