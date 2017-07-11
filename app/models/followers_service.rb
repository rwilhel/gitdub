class FollowersService
  def self.find_all(username)
    response = Faraday.get("https://api.github.com/users/#{username}/followers?client_id=#{ENV['GITHUB_KEY']}&client_secret=#{ENV['GITHUB_SECRET']}")
    JSON.parse(response.body)
  end
end
