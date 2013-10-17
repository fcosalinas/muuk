class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :seller_user, index: true
      t.references :buyer_user, index: true
      t.references :product, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
