class MomentsController < ApplicationController

  before_action :authenticate, only: %w[new create]

  def index
    @moments = Moment.all
  end

  def new
    @moment = Moment.new(prompt: "Tell me about a time ...")
  end

  def create
    @moment= Moment.new(moment_params)
    if @moment.save
      flash[:notice] = "The Moment was created."
      redirect_to moments_path
    else
      render :new
    end
  end

  private

  def moment_params
    params.require(:moment).permit(:prompt)
  end

  def authenticate
    redirect_to root_path unless current_user.present?
  end
end
