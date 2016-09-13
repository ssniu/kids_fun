class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "#{provider}") if is_navigational_format?
    else
      session["devise.#{provider}_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
 [:twitter, :facebook].each do |provider|
   provides_callback_for provider
 end

 def after_sign_in_path_for(resource)
   if resource.email_verified?
     super resource
   else
     finish_signup_path(resource)
   end

  def failure
    redirect_to root_path
  end
end
