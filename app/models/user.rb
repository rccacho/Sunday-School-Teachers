class User < ApplicationRecord
  has_secure_password
  has_many :messages
  has_many :activities
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://www.sessionlogs.com/media/icons/defaultIcon.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
