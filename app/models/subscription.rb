class Subscription < ActiveRecord::Base
  belongs_to :user_follower
  belongs_to :user_following
end
