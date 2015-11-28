class UserSchemeFavorite < ActiveRecord::Base
	belongs_to :user
	belongs_to :scheme
end
