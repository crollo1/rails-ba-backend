class AddNameToAirplane < ActiveRecord::Migration[5.2]
  def change
    add_column :airplanes, :name, :string
  end
end
