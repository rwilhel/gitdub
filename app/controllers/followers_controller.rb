class FollowersController < ApplicationController
  def index
    @followers = Followers.find_all(current_user.nickname)
  end
end
