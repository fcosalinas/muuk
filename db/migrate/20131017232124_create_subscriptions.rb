class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :user_follower, index: true
      t.references :user_following, index: true

      t.timestamps
    end
  end
end
