class Followers
  attr_reader :user, :avatar, :url

  def initialize(attributes={})
    @user = attributes['login']
    @user = attributes['avatar_url']
    @user = attributes['html_url']
  end

  def self.find_all(username)
    FollowersService.find_all(username).map do |follower|
      new(follower)
    end
  end
end
