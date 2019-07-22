class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :place
  # after_create :send_comment_email
  mount_uploader :picture, PictureUploader
end
