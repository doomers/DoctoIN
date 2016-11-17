class LoginsController < ApplicationController

def new

end

def create

  doctor =Doctor.find_by(email: params[:email])
  if doctor && doctor.authenticate(params[:password])
    session[:doctor_id] = doctor.id
  	flash[:success] = 'You are Logged in'
  	redirect_to doctor

  else

  	flash.now[:danger] = 'Wrong email password combination'
  	render 'new'

  end
end

def destroy
	session[:doctor_id] = nil
	flash[:success]='You have logged out'
	redirect_to "doctors/new"

end
end
