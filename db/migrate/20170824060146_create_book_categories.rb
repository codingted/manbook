class CreateBookCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :book_categories do |t|
      t.string :name
      t.integer :seq
      t.timestamps
    end
  end
end
