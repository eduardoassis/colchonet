class User < ActiveRecord::Base	

	EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

	validates_presence_of :email, :full_name, :location, :password
	validates_confirmation_of :password
	validates_length_of :bio, minimum: 30, allow_blank: false

	validates :email, presence: true,
					  format: { with: EMAIL_REGEXP },
					  uniqueness: true

end
