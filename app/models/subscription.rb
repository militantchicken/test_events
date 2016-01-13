class Subscription < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :events
  has_many :user_subs
end
