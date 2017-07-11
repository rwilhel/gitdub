class StarredRepos
  attr_reader :owner, :name, :url, :issues
  
  def initialize(attributes = {})
    @owner    = attributes[:owner][:login]
    @name     = attributes[:name]
    @url      = attributes[:html_url]
    @issues   = attributes[:open_issues_count]
  end

  def self.find_repos(user)
    StarredReposService.find_repos(user).map do |repo|
      new(repo)
    end
  end
end
