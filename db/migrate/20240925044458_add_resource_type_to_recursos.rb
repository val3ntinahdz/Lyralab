class AddResourceTypeToRecursos < ActiveRecord::Migration[7.1]
  def change
    add_column :recursos, :resource_type, :string
  end
end
