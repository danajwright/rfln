class NightoutsController < ApplicationController

def index
    @nightouts = Nightout.all
    puts "$$$$$$$$$$$ @nightouts: #{@nighouts}"
  end

  def new
    @nightouts = Nightout.new
  end

  def create
    @nightout = Nightout.new(params[:nightout])
    if @nightout.save
      redirect_to nightout_path(@nightout.id)
    else

      redirect_to new_nightout_path, :flash => { :error => "Missing required field!" }
    end

  end

  def show
    @nightout = Nightout.find(params[:id])
  end

  def destroy
    Nightout.delete(params[:id])
    redirect_to nightouts_path
  end

end
