class Like < ApplicationRecord
  belongs_to :mainnote
  belongs_to :user
  validates_uniqueness_of :mainnote_id, scope: :user_id
end
