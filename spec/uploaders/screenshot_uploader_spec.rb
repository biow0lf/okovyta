require 'rails_helper'

describe ScreenshotUploader do
  it { should be_a(CarrierWave::Uploader::Base) }

  it { expect(described_class.storage).to eq(CarrierWave::Storage::File) }
end
