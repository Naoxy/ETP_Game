class AvatarsController < ApplicationController
  def index
    @avatars = Avatar.all
  end
  
  def show
    
  end
  
end
