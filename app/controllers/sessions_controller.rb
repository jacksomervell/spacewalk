class SessionsController < ApplicationController
  def index
    @sessions = Session.all
    @user= User.all
  
  end

  def new
    user = User.find(params[:user_id])
    @session = user.sessions.build
  end

  def create
    user = User.find(params[:user_id])
    @session = user.sessions.new(session_params)
    @user = User.find(params[:user_id])

    if @session.save
      flash[:notice] = 'You added a new session'
      redirect_to @user
    else
      flash.now[:error] = "Error: #{session.errors.full_messages}"
      render :new
    end
  end

  def show
    user = User.find(params[:post_id])
    @session = user.sessions.find(params[:id])
  end

  def edit
    user = User.find(params[:post_id])
    @session = user.sessions.find(params[:id])
  end

  def update
    user = User.find(params[:post_id])
    @session = user.sessions.find(params[:id])

     if @session.update(user_params)
      redirect_to user
    else
      render :edit
    end
  end

  def destroy
    user = User.find(params[:post_id])
    @session = user.sessions.find(params[:id])
    @session.destroy
  end

  private

  def session_params
    params.require(:session).permit(:activity, :location, :distance)
  end

 
end