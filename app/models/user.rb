class User < ActiveRecord::Base
	has_many :pins
	has_many :items, through: :pins

	validates(:name, :presence => true)
	validates(:user_name, :presence => true)
	validates(:money, :presence => true)
end
