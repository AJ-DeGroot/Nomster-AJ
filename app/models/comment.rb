class Comment < ApplicationRecord
  belongs_to :user
  blongs_to :place
end