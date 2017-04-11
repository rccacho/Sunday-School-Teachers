class Message < ApplicationRecord
  searchkick
  belongs_to :user
  has_many :activities
end
