class CartsController < ApplicationController

  def index 
    @category = current_user.cart.category
    @gif=GetGif.new.perform(@category)
    @cart_gif = current_user.cart.items 
    puts "################################################"
    puts "session[:premium] == succeeded?"
       puts session[:premium]
    puts "################################################"
  end

  def show
    
  end

  
  def create
    # current_user.cart.(category: params[:category]).save
        # Item.new(category: "snake").save
      c =  current_user.cart
      c.category = params[:category]
      c.save

    redirect_to carts_path 
  end


  def update

    puts "3333333333333333333333333333"
    puts params[:id]
    # puts params[:gif_url]
    # puts session[:i]
    puts "RRRRRRRRRRRRRRRRRRR"
    puts "333333333333333333333333333333"
    @gif=GetGif.new.perform(params[:category])

      rand_numb=[*1..50].sample(4)
       4.times do |i|
     current_user.cart.items.all[i].update(url: @gif["data"][rand_numb[i]]['images']['fixed_width']['url'])
     puts current_user.cart.items.all[i].id
       end

    respond_to do |format|
  format.js {render inline: "location.reload();" }
end
  #  i = Item.create(url: params[:gif_url])
    # if defined?(session[:i]) == nil || session[:i] > 2

  # if session[:i] == nil || session[:i] > 2
  #     session[:i]=0
  #   else session[:i]+=1
  #   end

    #     puts @i
    # puts "77777777777777777777777"
    # if @item > 3
    #   @item = 0
    # else 

    # current_user.cart.items.all[session[:i]].update(url: params[:gif_url])

    # @item += 1
    # end
  #  JoinTableCartItem.create(cart_id: current_user.cart.id, item_id: i.id)
    #  JoinTableCartItem.update(current_user.cart.items.first.id, cart_id: current_user.cart.id, item_id: i.id)

   
        


  end

end
