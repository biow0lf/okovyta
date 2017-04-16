class Screenshot < ApplicationRecord
  belongs_to :user

  validates :user, presence: true

  mount_uploader :file, ScreenshotUploader
end
