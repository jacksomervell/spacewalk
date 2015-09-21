class SessionsController < ApplicationController
  def index
    @sessions = Session.all
    @user = User.find(params[:user_id])
   
  
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(user_params)
    
    if @session.save
      flash[:notice] = 'You added a new session'
      redirect_to @session
    else
      flash.now[:error] = "Error: #{session.errors.full_messages}"
      render :new
    end
  end

  def show
    @session = Session.find(params[:id])
  end

  def edit
    
  end

  def update
   
  end

  def destroy
   
  end

  private
  def user_params
    params.require(:user).permit(:name, :age, :location)
  end
end