class SkillsController < ApplicationController
  def index
  end

  def update
  end

  def edit
  end

  def show
  end

  def create
    @user = current_user
    @skill = Skill.new(skills_params)
    @skill.user_id = current_user.id
    @skill.save
    redirect_to @user
  end

  private
  def skills_params
    params.require(:skill).permit(:field, :title, :start_date, :end_date ,:comment, :resume_one, :resume_two, :resume_three)
  end
end
