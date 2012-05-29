class RegistrationsController < Devise::RegistrationsController
  def create
    @title = "Step 1: Sign up"
    @user = User.new(params[:user])
    if @user.save
      redirect_to :about_path
      # render 'confirmations/new'
    else
      redirect_to :about_path
    end
  end

   
end