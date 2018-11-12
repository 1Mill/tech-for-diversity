class User < ApplicationRecord
	devise :database_authenticatable,
		:registerable,
		:jwt_authenticatable,
		jwt_revocation_strategy: JwtBlacklist

	has_many :projects,
		:dependent => :destroy
end
