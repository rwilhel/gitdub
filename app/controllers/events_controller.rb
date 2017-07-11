class EventsController < ApplicationController
  def index
    @events = Events.find_events(current_user.nickname)
  end
end
