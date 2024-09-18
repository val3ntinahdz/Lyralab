class CreateRecursos < ActiveRecord::Migration[7.1]
  def change
    create_table :recursos do |t|
      t.string :titulo
      t.string :categoria
      t.string :url
      t.text :descripcion

      t.timestamps
    end
  end
end
