class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :pins
	has_many :items, through: :pins

	validates(:name, :presence => true)
	validates(:user_name, :presence => true)
	validates(:money, :presence => true)
end
