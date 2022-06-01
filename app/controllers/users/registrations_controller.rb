class Users::RegistrationsController < Devise::RegistrationsController

  def create 
    super

    if @user.valid?
      UserMailer.with(user: @user).welcome_email.deliver_now
    end 
  end
end