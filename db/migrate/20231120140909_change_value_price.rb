class ChangeValuePrice < ActiveRecord::Migration[7.1]
  def change
    remove_column :consoles, :price
    add_column :consoles, :price, :integer
  end
end
