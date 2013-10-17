class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :product, index: true

      t.timestamps
    end
  end
end
