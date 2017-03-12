class PressRelease < ApplicationRecord
  has_many :comments
  validates_length_of :subheadline, :maximum => 250, :allow_blank => false
  validates_length_of :headline, :allow_blank => false
  validates_length_of :body, :allow_blank => false
end
