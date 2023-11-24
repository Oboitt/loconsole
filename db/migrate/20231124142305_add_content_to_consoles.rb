class AddContentToConsoles < ActiveRecord::Migration[7.1]
  def change
    add_column :consoles, :content, :text
  end
end
