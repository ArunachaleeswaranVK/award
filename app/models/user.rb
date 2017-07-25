class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable ,:confirmable
         
  after_create :skip_conf!

  def skip_conf!
    self.confirm if Rails.env.development?
  end       
         
  has_many :bestaccreditedstudentbranches    
  has_many :bestcsiinternationalstudentseventhosts
  has_many :highestsponsorshipofcsievents
  has_many :longestcontinuoussbcs
  has_many :facmaxpublishings
  
end
