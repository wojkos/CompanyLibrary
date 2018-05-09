class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :tittle
      t.text :author
      t.text :category
      t.string :image_url
      t.boolean :is_borrowed, default: false

      t.timestamps
    end
  end
end
