class ReposController < ApplicationController
  def index
    @repos = Repos.find_repos(current_user.nickname)
  end
end
