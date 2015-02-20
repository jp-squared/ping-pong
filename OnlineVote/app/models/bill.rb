class Bill < ActiveRecord::Base
  has_many :votes
  belongs_to :staffer
end
