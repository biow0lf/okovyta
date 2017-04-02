module Api
  class ProfilesController < BaseController
    before_action :authenticate!

    private

    def resource
      current_user
    end
  end
end
