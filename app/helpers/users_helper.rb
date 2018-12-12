# Helpers para saber cual es el usuario y exigir que exista un
# usuario al tratar de crear de historias
module UsersHelper
  def current_user
    User.find(session[:user_id])
  end

  def logged?
    session[:user_id].present? ? true : false
  end
end
