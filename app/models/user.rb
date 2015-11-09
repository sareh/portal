class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :services

  # validates :username,         length: { minimum: 2 }
  # validates :role,             presence: true
  # validates :email,            length: { minimum: 3 }
  # validates :password,         length: { minimum: 8 }
  # validates :confirm_password, length: { minimum: 8 }
  

end
