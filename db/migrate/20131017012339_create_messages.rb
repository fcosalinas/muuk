class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :sender_user, index: true
      t.references :reciever_user, index: true
      t.string :content

      t.timestamps
    end
  end
end
