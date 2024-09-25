class AddSteamAreaToRecursos < ActiveRecord::Migration[7.1]
  def change
    add_column :recursos, :steam_area, :string
  end
end
