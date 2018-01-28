class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :titulo
      t.text :cuerpo
      t.integer :contador_visitas

      t.timestamps
    end
  end
end
