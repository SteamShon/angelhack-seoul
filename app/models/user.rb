class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  # attr_accessible :title, :body
  has_many :themes
  has_many :posts
  has_many :comments
  has_many :authentications
  def email_required?
    super && email.blank?
  end
  def apply_omniauth(omniauth)
    authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'], 
      :token => omniauth['credentials'].token, :token_secret => omniauth['credentials'].secret)
  end
  
  def password_required?
    (authentications.empty? || !password.blank?) && super
  end 
end
