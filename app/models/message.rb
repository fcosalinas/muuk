class Message < ActiveRecord::Base
  belongs_to :senderUser
  belongs_to :recieverUser
end
