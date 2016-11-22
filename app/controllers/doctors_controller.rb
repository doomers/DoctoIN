class DoctorsController < ApplicationController
  before_action :require_same_user, only: [:show]

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

      if current_user
     @doctor = Doctor.find(params[:id])
     @posts = @doctor.posts
      else render new
      end
  	end

  	private 
  	def chef_params
    params.require(:doctor).permit(:name, :email, :passwd, :years_of_exp)
  	end

    def require_same_user
      @doctor =Doctor.find(params[:id])
      if current_user != @doctor
        flash[:danger]= 'You cant see others Doctors profile'
        redirect_to new_doctor_path
      end
    end

end
