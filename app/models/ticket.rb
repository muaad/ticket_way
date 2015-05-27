class Ticket < ActiveRecord::Base
  belongs_to :event
  belongs_to :account
  belongs_to :user
end
