class UsersController < ApplicationController
  def index
    @users = User.all.order('created_at DESC')
  end

  def new
    @user = User.new
  end

  def create
    user = user.new(user_params)
    
    if user.save
      flash[:notice] = 'user created successfully!'
      redirect_to user
    else
      flash.now[:error] = "Error: #{user.errors.full_messages}"
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])

    if User.update(user_params)
      redirect_to user
    else
      render :edit
    end
  end

  def destroy
    user = User.find(params[:id]).destroy

    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :age, :location)
  end
end
