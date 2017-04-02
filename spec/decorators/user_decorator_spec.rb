require 'rails_helper'

describe UserDecorator do
  describe '#as_json' do
    let!(:user) { create(:user) }

    subject { user.decorate.as_json }

    its([:id]) { should eq(user.id) }

    its([:first_name]) { should eq(user.first_name) }

    its([:last_name]) { should eq(user.last_name) }

    its([:email]) { should eq(user.email) }

    its([:created_at]) { should eq(user.created_at.iso8601) }

    its([:updated_at]) { should eq(user.updated_at.iso8601) }
  end
end
