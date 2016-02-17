

class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by_email(params[:session][:email])
    @user_admin_role=User.find_by_is_admin(params[:session][:email])
    @user_instructor_role=User.find_by_is_instructor(params[:session][:email])

    if @user && @user.authenticate(params[:session][:password])
      if @user_admin_role
        session[:user_id] = @user.id
        session[:user_email] = @user.email
        redirect_to '/admin_home_page'
      elsif @user_instructor_role
        session[:user_id] = @user.id
        session[:user_email] = @user.email
        redirect_to '/instructor_home_page'
      else
        session[:user_id] = @user.id
        session[:user_email] = @user.email
        redirect_to '/student_home_page'
      end
    else
       flash.now[:danger] ='Invalid email/password combination'
       redirect_to '/login'

    end
  end

  def destroy
    session[:user_id]=nil
    session[:user_email]=nil
    redirect_to '/'
  end
end




