class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.new(signup_params)

    if @signup.save
      redirect_to root_url, notice: "Thank you for expressing interest."
    else
      render action: 'new', alert: "Signup failed."
    end
  end

  private
    def signup_params
      params.require(:signup).permit(:email)
    end
 end

