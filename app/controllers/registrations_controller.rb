class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  private
    def needs_password?(user, params)
      !params[:user][:password].blank?
      # If we want to mandate password on email update to then:
      # if params[:user][:email].blank?
      # 	!params[:user][:password].blank?
      # else
      #  	user.email != params[:user][:email] || !params[:user][:password].blank?
      # end
    end

  protected

    # my custom fields are :name, :heard_how
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:chapter_id,:first_name, :last_name,
          :email, :password, :password_confirmation)
      end
    end

    def after_sign_up_path_for(resource)
      root_path
    end

    def after_update_path_for(resource)
      user_path(resource)
    end


end
