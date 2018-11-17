class User < ApplicationRecord
	devise :database_authenticatable,
		:registerable,
		:jwt_authenticatable,
		jwt_revocation_strategy: JwtBlacklist

	has_many :projects,
		:dependent => :destroy

	enum role: {
		business: 0,
		volunteer: 1,
		admin: 2
	}

	validates :role,
		:presence => true

	after_initialize :set_default_role, :if => :new_record?

	private

	def set_default_role
		self.role ||= :business
	end

end
