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
      if logged_in?
     @doctor = Doctor.find(params[:id])
      else render new
      end
  	end

  	private 
  	def chef_params
    params.require(:doctor).permit(:name, :email, :passwd, :years_of_exp)
  	end

end
