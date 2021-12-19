class UsersController < ApplicationController
  
  def index
    @user = User.all
  end
  
  

  def show
   
  end
  
  

  def new
    
  end
  
  

  def create
    @user = User.new(params[:id])
    if @user.save 
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:user])
      if @user.update_attributes(params[:user])
        flash[:success] = "Object was successfully updated"
        redirect_to @user
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  
  
end
