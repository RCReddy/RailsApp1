class UsersController < ApplicationController
   before_filter :authenticate_user!, :except => [ :new, :create ]
   
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	@secrate_code = SecrateCode.find_by_id(params[:secrate_code][:secrate_code])
  	
  	if @user.valid? && @user.save
      @secrate_code.update_attributes(:user_id => @user.id)
      sign_in(@user)
      redirect_to root_path
  else
  	render :action => 'new'
  end

  end
  def show
  end
  def user_params
  params.require(:user).permit(:first, 
  :last, :email, :password, :password_confirmation)
end
end
