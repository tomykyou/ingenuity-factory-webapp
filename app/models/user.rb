class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :username,length: {maximum:10}, presence: true
  validates :occupation,presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :mainnotes, dependent: :destroy
  has_many :notecomments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_mainnote, through: :likes, source: :mainnote
  
  has_many :uses, dependent: :destroy
  has_many :used_mainnote, through: :uses, source: :mainnote


  def already_liked?(mainnote)
    self.likes.exists?(mainnote_id: mainnote.id)
  end

  def already_used?(mainnote)
    self.uses.exists?(mainnote_id: mainnote.id)
  end
  def update_without_current_password(params, *options)
   params.delete(:current_password)
      
   if params[:password].blank? && params[:password_confirmation].blank?
    params.delete(:password)
    params.delete(:password_confirmation)
   end
      
   result = update_attributes(params, *options)
   clean_up_passwords
   result
  end
end
