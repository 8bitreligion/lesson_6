class UsersController < ApplicationController
	def index
        if params[:query]
            @users = User.where("email like ?", "%#{params[:query]}%")
        else
            @users =User.all
        end
    end

    end

    def show
    	@user = User.find params[:id]

    end

    def edit
    
    end

    def new
    	@user = User.new
    end

    def create
        @user = User.new(params[:user])
        if @user.save
            flash[:notice] = "New user has been created!"
            redirect_to  user_path @user
        else 
          flash[:alert] = " FAIL"
          redirect_to new_user_path
        end    


    end

    def update
    	@user = User.find params[:id]
    
    end

    def destroy
    	@user = User.find params[:id]
    	if @user.destroy
        end

    end
end



