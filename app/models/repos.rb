class Repos

  attr_reader :name, :url, :language

  def initialize(attributes = {})
    @name     = attributes[:name]
    @url      = attributes[:html_url]
    @language = attributes[:language]
  end

  def self.find_repos(user)
    ReposService.find_repos(user).map do |repo|
      new(repo)
    end
  end
end
