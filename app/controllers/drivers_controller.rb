class DriversController < ApplicationController
  def index
    @drivers = Driver.all
  end

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(
      name: params[:driver][:name],
      vin: params[:driver][:vin]
    )
    if @driver.save
      redirect_to drivers_path
    else
      render :new
    end
  end

  def edit

  end

  def update
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def destroy
  end
end
