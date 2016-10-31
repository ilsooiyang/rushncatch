class User < ApplicationRecord
has_secure_password

	validates :name, presence: true
  validates :username, presence: true,
  										 length: { minimum: 6 },
  										 format: /\A\w+\z/,
  										 uniqueness: { case_sensitive: false }
  validates :email, presence: true,
                    format: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i,
                    uniqueness: { case_sensitive: false }
	validates :password, length: { minimum: 5, allow_blank: true }
	validates :number, inclusion: { in: 0..100 }

  has_many :blogs, dependent: :destroy

	def gravatar_id
		Digest::MD5::hexdigest(email.downcase)
	end

  def self.authenticate(email_or_username, password)
    user = User.find_by(email: email_or_username) || User.find_by(username: email_or_username)
    user && user.authenticate(password)
  end

end
