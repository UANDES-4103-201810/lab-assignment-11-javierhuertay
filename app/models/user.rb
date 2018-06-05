class User < ApplicationRecord
	has_many :messages
	validates :email, :uniqueness => { :case_sensitive => false }
	validates :username, :uniqueness => { :case_sensitive => false },length: { maximum: 20 }
end
