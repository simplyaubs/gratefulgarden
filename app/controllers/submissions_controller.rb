class SubmissionsController < ApplicationController

  def index
    @submission = Submission.new
    @submissions = Submission.all
  end

  def create
    @submission = Submission.create(submission_params)
    if @submission.save
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def submission_params
    params.require(:submission).permit(:submission)
  end

end
