class ActivitiesController < ApplicationController
    before_action :set_destination

  def index
    @activities = @destination.activities
    render json: @activities
  end

  def show
    @activity = @destination.activities.find_by(id: params[:id])
    render json: @activity
  end

  def create
    @activity = @destination.activities.new(activity_params)
    if @activity.save
      render json: @destination
    else
      render json: {error: 'Unable to create a new activity.'}
    end
  end

  def destroy
    @activity = Activity.find(params['id'])
    @destination = Destination.find(@activity.destination_id)
    @activity.destroy
    render json: @destination
  end

  private
  def activity_params
    params.require(:activity).permit(:title, :destination_id)
  end

  def set_destination
    @destination = Destination.find(params[:destination_id])
  end

end 