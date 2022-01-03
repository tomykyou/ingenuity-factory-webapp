class Mainnote < ApplicationRecord
  mount_uploader :image1, ImageUploader
  mount_uploader :image2, ImageUploader
  mount_uploader :image3, ImageUploader
  belongs_to :user
  has_many :notecomments, dependent: :destroy
  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  has_many :uses
  has_many :used_users, through: :uses, source: :user
  
  validate :title_valid
  def title_valid
    if title.blank?
      errors.add(:title, :blank)
    elsif title.length < 10
      errors.add(:title, 'は10文字以上で入力してください')
    elsif title.length > 25
      errors.add(:title, 'は25文字以下で入力してください')
    end
  end
  validate :text_valid
  def text_valid
    if text.blank?
      errors.add(:text, :blank)
    elsif text.length > 500
      errors.add(:text, 'は500文字以内で入力してください')
    end  
  end

  validate :category_valid
  def category_valid
    if category.blank?
      errors.add(:category, :blank) 
    end  
  end

  validate :target_valid
  def target_valid
    if target.blank?
      errors.add(:target, :blank) 
    end  
  end
end
