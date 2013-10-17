class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :title
      t.references :category, index: true

      t.timestamps
    end
  end
end
