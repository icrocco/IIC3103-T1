class PressRelease < ApplicationRecord
  has_many :comments, :dependent => :delete_all
  validates_length_of :subheadline, :maximum => 250, :allow_blank => false
  validates_length_of :headline, :allow_blank => false
  validates_length_of :body, :allow_blank => false

  def self.my_order
    PressRelease.all.order('created_at DESC')
  end

  def self.my_truncate
    PressRelease.last(10).reverse.each do |press_release|
      if press_release.body.length == 1001 || press_release.body.length == 1002 || press_release.body.length == 1003
        press_release.body = press_release.body.split(' ')[0...-1].join(' ') + "..."
      elsif press_release.body.length > 1003
        press_release.body = press_release.body.truncate(1003, separator: " ")
      end
    end
  end
end
