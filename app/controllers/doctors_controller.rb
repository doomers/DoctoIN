class DoctorsController < ApplicationController
	def new 
	end

	def create 
      @doctor = Doctor.create(chef_params)

    if @doctor.save
    flash[:success] = "YOur Account has been successfully Created"
    session[:doctor_id] = @doctor.id
      	redirect_to @doctor
      end
  	end

  	def show
     @doctor = Doctor.find(params[:id])
  	end

  	private 
  	def chef_params
    params.require(:doctor).permit(:name, :email, :passwd, :years_of_exp)
  	end
end