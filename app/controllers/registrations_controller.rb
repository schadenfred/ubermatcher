class RegistrationsController < Devise::RegistrationsController
  
  def new
    @title = "step fred"
  end

  def create
    @title = "Step 1: Sign up"
    @user = User.new(params[:user])
    if @user.save
      render :new, notice: "outstanding"
      # render 'confirmations/new'
    else
      redirect_to :about
    end
  end
  

   
end