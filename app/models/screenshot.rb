class Screenshot < ApplicationRecord
  belongs_to :user

  validates :user, presence: true

  validates :file, presence: true

  mount_uploader :file, ScreenshotUploader
end
