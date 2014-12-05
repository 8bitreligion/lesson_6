def new

end

def create
	@user = User.where(email: params[:email])
	if @user && @user.password == params [:password]
		flash[:notice] = "You are logged in!"
		redirect_to user_path @user

	else
		flash[:alert] = "You do not have an acount!"
		redirect_to new_session_path

end

def destroy
	class SessionsController

 session[:user_id] = nil
 redirect_to root_path
 end
end
