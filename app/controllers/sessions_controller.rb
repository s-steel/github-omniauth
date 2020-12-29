class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    user = User.find_by_provider_and_uid(auth['provider'], auth['uid']) || User.create_with_omniauth(auth)
    auth_token = auth['credentials']['token']
    @repos = GithubFacade.user_repos(auth_token)
    # require 'pry', binding.pry
    session[:user_id] = user.id
    redirect_to root_path, :notice => 'Signed In'
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, :notice => 'Signed Out'
  end
end
