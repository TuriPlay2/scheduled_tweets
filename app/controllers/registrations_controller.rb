class RegistrationsController < ApplicationController
  def new
    @user = User.new  
  end

  def create

    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id 
      redirect_to root_path, notice: "Sucesso em Cadastrar"
    else

      render :new

    end



    #{"email"=>"", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}
    #User.new({email: "yuri1@gmail.com", password: "password"})
  end

  private

  def user_params
    params.require(:user).permit(:email,:password,:password_confirmation)
  end

end
