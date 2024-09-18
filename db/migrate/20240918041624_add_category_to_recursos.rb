class AddCategoryToRecursos < ActiveRecord::Migration[7.1]
  def change
    add_reference :recursos, :category, null: false, foreign_key: true
  end
end
