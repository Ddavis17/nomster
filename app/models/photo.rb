class Photo < ApplicationRecord
  belongs_to :user 
  belongs_to :place
  after_create :send_comment_email

end
class Photos < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end