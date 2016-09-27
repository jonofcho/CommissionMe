class UsersController < ApplicationController
  def index

  end

  def show
    @user = current_user
  end

  def second
    @user = current_user
  end
end
