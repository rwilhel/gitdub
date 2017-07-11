class StarredReposService

  def self.find_repos(user)
    response = Faraday.get("https://api.github.com/users/#{user}/starred?client_id=#{ENV['GITHUB_KEY']}&client_secret=#{ENV['GITHUB_SECRET']}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
