module ApplicationHelper
  def loged_in
    if user_signed_in?
      current_user.username
    else
      'Not logged in'
    end
  end

  def profile_button
    if user_signed_in?
      link_to 'Edit profile', edit_user_registration_path, class: 'navbar-link'
    else
      link_to 'Sign up', new_user_registration_path, class: 'navbar-link'
    end
  end

  def log_out_button
    if user_signed_in?
      link_to 'Logout', destroy_user_session_path, method: :delete, class: 'navbar-link'
    else
      link_to 'Login', new_user_session_path, class: 'navbar-link'
    end
  end
end
