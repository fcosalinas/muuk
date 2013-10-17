class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :senderUser, index: true
      t.references :recieverUser, index: true
      t.string :content

      t.timestamps
    end
  end
end
