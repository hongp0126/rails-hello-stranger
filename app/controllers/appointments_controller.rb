class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def new
    @food_clutures = FoodCulture.all
    @appointment = Appointment.new()
  end

  def create
    @appointment = Appointment.create(appointment_params)
    @appointment.food_culture = FoodCulture.find(params[:appointment_id][:food_culture])
    @appointment.user = current_user
    if @appointment.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @appointment.update(appointment_params)
    redirect_to root_path
  end

  def show
  end

  def destroy

  end

  private

  def appointment_params
    params.require(:appointment).permit(:random_name, :date, :address, :user_id)
  end
end
