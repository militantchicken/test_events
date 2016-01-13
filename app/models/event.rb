class Event < ActiveRecord::Base
  belongs_to :subscription
  has_many :comments
end
