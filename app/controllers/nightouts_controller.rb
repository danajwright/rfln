class NightoutsController < ApplicationController

  before_filter :ensure_current_user, only: [:edit, :new, :create, :destroy]

  def index
      @nightouts = Nightout.all
      puts "$$$$$$$$$$$ @nightouts: #{@nighouts}"
  end

  def show
    @nightout = Nightout.find(params[:id])
  end

  def new
    @nightout = Nightout.new
  end

  def create
    @nightout = Nightout.new(params[:nightout])
    if @nightout.save
      redirect_to nightout_path(@nightout.id)
    else
      redirect_to new_nightout_path, :flash => { :error => "Missing required field!" }
    end
  end

  def edit
    @nightout = Nightout.find(params[:id])
  end

  def update
    # find my sample to be updated
    updated_@nightout = Nightout.find(params[:id])
    # update
    updated_@nightout = found_nightout.updates_attributes(params[:nightout])
    redirect_to_nightout_path(updated_nightout)
  end

  def destroy
    Nightout.delete(params[:id])
    redirect_to nightouts_path
  end

end
