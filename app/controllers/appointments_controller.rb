class AppointmentsController < ApplicationController
  before_action :set_appointment, only:[:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    ids = Appointment.select(:food_culture_id)
    @food_cultures = FoodCulture.where(id: ids).distinct
    @appointments = Appointment.all
    @users = User.all
  end

  def new
    @food_cluture = FoodCulture.find(params[:food_culture_id])
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
    @appointment.destroy
    redirect_to appointment_path
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:user_id, :food_culture_id, :random_name, :date, :address, :user_id)
  end
end
