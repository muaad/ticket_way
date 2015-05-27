class Account < ActiveRecord::Base
	has_many :events
	has_many :tickets
	# has_many :users, through: :tickets
end
