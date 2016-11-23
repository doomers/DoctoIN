class HospitalsController < ApplicationController
	def new
	end

	def create 
      @hospital = Hospital.create(hospital_params)

      if @hospital.save
      	redirect_to @hospital
      end
  	end

  	private  
  	def hospital_params
  	params.require(:hospital).permit(:name, :email, :address, :phoneno, :category)

  	end
end
