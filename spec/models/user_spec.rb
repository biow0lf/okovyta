require 'rails_helper'

describe User do
  it { should be_a(ApplicationRecord) }

  it { should have_many(:sessions).dependent(:destroy) }

  it { should have_many(:screenshots).dependent(:destroy) }

  it { should validate_presence_of(:email) }

  it { should validate_uniqueness_of(:email).case_insensitive }

  it { should validate_presence_of(:first_name) }

  it { should validate_presence_of(:last_name) }

  it { should have_secure_password }
end
