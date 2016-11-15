class AuthenticateController < ApplicationController
def register
  end

  def create_user
    u = User.new
    u.fname = params[:first_name]
    u.lname = params[:last_name]
    u.email = params[:email]
    u.password = params[:password]

    if  u.save!
      flash[:notice] = "User created Successfully"
      session[:user_id] =  u.id
      redirect_to root_url
    else
      render :register
    end

  end

  def login
    @user = User.where(:email => params[:email]).first
    if !@user.nil? && @user.password == params[:password]
      session[:user_id]  = @user.id
      flash[:notice] = "Logged In Successfully"
      redirect_to root_url
     else
      flash[:notice] = "unable to login"
      render :register
     end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_url
  end
end
