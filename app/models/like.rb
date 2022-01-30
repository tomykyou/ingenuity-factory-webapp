class Like < ApplicationRecord
  belongs_to :user
  belongs_to :mainnote
  validates_uniqueness_of :mainnote_id, scope: :user_id
end
