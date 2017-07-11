class Events

  attr_reader :type, :repo_name, :repo_url, :created_at

  def initialize(attributes = {})
    @type       = attributes[:type]
    @repo_name  = attributes[:repo][:name]
    @repo_url   = attributes[:repo][:url]
    @created_at = attributes[:created_at]
  end

  def self.find_events(user)
    EventsService.find_events(user).map do |event|
      new(event)
    end
  end
end
