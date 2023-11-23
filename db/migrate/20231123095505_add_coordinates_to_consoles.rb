class AddCoordinatesToConsoles < ActiveRecord::Migration[7.1]
  def change
    add_column :consoles, :latitude, :float
    add_column :consoles, :longitude, :float
    add_column :consoles, :address, :string
  end
end
