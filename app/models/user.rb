class User < ActiveRecord::Base
  
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, 
         :validatable, :omniauthable, :confirmable

  attr_accessible :email, :password, :password_confirmation, :remember_me,
  				:name, :confirmed_at, :confirmation_token

  def password_required?
    super if confirmed?
  end

  def password_match?
    self.errors[:password] << "can't be blank" if password.blank?
    self.errors[:password_confirmation] << "can't be blank" if password_confirmation.blank?
    self.errors[:password_confirmation] << "does not match password" if password != password_confirmation
    password == password_confirmation && !password.blank?
  end
end

