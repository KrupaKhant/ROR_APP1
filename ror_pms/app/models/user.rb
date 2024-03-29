class User < ApplicationRecord
  has_and_belongs_to_many :roles, :join_table => :users_roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  rolify 
end
