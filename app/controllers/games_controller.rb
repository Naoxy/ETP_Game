class GamesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @skip_navbar = true
    # @score = params[:score]
    # @score = session[:score]
    @color = ["color-b2","color-b3","color-b4","color-b5","color-b6","color-b7","color-b8","color-b9"]
    @user = current_user
    g = @user.games.last
# case : game loop : if score in parmas get it
    if  params[:score]
      g.score = params[:score]
# case : first game
    elsif @user.games.last == nil         
      g = Game.new
      g.user= @user
      g.score = 1
    end
# case : reconnect
    @score = g.score 
    puts "#######################"
    puts "score = #{g.score}"
    g.save
    if @score > 4
      @score = 1
      # redirect_to(root_path)
      
    end

    @Words=[]
    name = @user.child_name.upcase
    @Words.push(name)
    loop do 
      word =  name.chars.shuffle.join
      if word != name
        @Words.push(word)
      end
      break if @Words.count==9
    end
    @Words= @Words.shuffle
    
    
  end
  
  def show
    
  end

 def game1
     @user=current_user
  end

  
  

end
