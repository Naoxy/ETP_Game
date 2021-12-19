class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters,if: :devise_controller? 
before_action :current_cart
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:child_name, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:child_name, :email, :password, :password_confirmation, :current_password) }
  end 

  def current_cart
    puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
   
     puts "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    if current_user.present?
      if current_user.cart == nil
        c = Cart.first.dup
        c.user_id = current_user.id
        c.save
        Cart.first.items.each do |i| 
          JoinTableCartItem.create(item_id: i.id, cart_id: c.id)   
        end
      end
    end
  end

end