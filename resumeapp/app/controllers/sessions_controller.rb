class SessionsController < ApplicationController
  
  def new
  end

  def create

      @user = User.where(username: params[:session][:username],params[:session][:password]).exists?(conditions = :none)
     
     # puts params[:session][:username]

      if @user
          puts "HELLO"
      end  
   end

end
