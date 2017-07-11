class Following
  attr_reader :user, :avatar, :url

  def initialize(attributes={})
    @user = attributes['login']
    @user = attributes['avatar_url']
    @user = attributes['html_url']
  end

  def self.find_all(username)
    FollowingService.find_all(username).map do |followed|
      new(followed)
    end
  end
end
