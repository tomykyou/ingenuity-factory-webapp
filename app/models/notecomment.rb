class Notecomment < ApplicationRecord
  belongs_to :user
  belongs_to :mainnote
end
