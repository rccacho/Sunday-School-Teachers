class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :set_message, only: [:new, :create, :index]

  # GET /activities
  def index
    @activities = Activity.all
  end

  # GET /activities/1
  def show
  end

  # GET /activities/new
  def new
    @activity = Activity.new(user_id: params[:user_id])
  end

  # GET /activities/1/edit
  def edit
  end

  # POST /activities
  def create
    activity = activity_params
    activity[:user_id] = params[:user_id]
    @activity = Activity.new(activity)
    if @activity.save
      redirect_to activity_path(@activity)
    else
      flash[:error] = "Wrong message parameters"
      render :new
    end
  end

  # PATCH/PUT /activities/1
  def update
    if @activity.update(activity_params)
      redirect_to @activity, notice: 'Activity was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /activities/1
  def destroy
    @activity.destroy
    redirect_to activities_url, notice: 'Activity was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    def set_message
      @message = Message.find(params[:message_id])
    end

    # Only allow a trusted parameter "white list" through.
    def activity_params
      params.require(:activity).permit(:key_verse, :review, :description, :materials, :media_ref, :user_id, :message_id)
    end
end
