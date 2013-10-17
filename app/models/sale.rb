class Sale < ActiveRecord::Base
  belongs_to :seller_user
  belongs_to :buyer_user
  belongs_to :product
end
