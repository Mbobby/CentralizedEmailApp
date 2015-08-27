class User < ActiveRecord::Base
	has_secure_password
	has_and_belongs_to_many :emails, join_table: "emails_users"
	validates_uniqueness_of :username, :email

	before_save :downcase_username, :downcase_email

	private
	def downcase_username
		self.username.downcase!
	end

	def downcase_email
		self.email.downcase!
	end
end
