class User < ActiveRecord::Base
  before_save { self.username = self.username.capitalize,
                self.email = self.email.downcase }

 validates :username, presence: true, length: { maximum: 50 },
                                      uniqueness: { case_sensitive: false }
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, presence: true, length: { maximum: 255 },
                                    uniqueness: { case_sensitive: false },
                                    format: { with: VALID_EMAIL_REGEX }
  has_secure_password
end
