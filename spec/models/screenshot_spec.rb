require 'rails_helper'

describe Screenshot do
  it { should belong_to(:user) }

  it { should validate_presence_of(:user) }

  it { should validate_presence_of(:file) }

  it { expect(subject.file.class).to eq(ScreenshotUploader) }
end
