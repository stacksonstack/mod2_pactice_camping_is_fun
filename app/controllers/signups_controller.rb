class SignupsController < ApplicationController
  
   def new
       @signup = Signup.new
   end

   def create
       signup = Signup.new(params.require(:signup).permit(:activity_id, :camper_id, :time))
       if signup.valid?
         flash[:success] = "signup successfully created"
         redirect_to camper_path(signup.camper_id)
       else
         flash[:error] = "Something went wrong"
         redirect_to new_signup_path
       end
   end
   
   
    
end