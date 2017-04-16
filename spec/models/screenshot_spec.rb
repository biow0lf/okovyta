require 'rails_helper'

describe Screenshot do
  it { should belong_to(:user) }

  it { should validate_presence_of(:user) }

  it { expect(subject.file.class).to eq(ScreenshotUploader) }
end
