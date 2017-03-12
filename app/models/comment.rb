class Comment < ApplicationRecord
  belongs_to :press_release
  validates_length_of :author, :allow_blank => false
  validates_length_of :content, :allow_blank => false
end
