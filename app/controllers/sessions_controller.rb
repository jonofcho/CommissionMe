class SessionsController < ApplicationController
  def index
    @sessions_index = true
  end

  def finder
    render '/devise/sessions/finder'
  end

  def dreamer
    render '/devise/sessions/dreamer'
  end
end
