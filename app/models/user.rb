class User < ActiveRecord::Base
	has_many :microposts

	def formatted_email
		"#{full_name} <#{email}>"
	end

	def full_name
		return first_name + " " + last_name
	end
end
