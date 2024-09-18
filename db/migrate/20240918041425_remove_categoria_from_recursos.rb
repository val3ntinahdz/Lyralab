class RemoveCategoriaFromRecursos < ActiveRecord::Migration[7.1]
  def change
    remove_column :recursos, :categoria, :string
  end
end
