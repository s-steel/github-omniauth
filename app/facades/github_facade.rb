class GithubFacade

  def self.user_repos(auth_token)
    repos = GithubService.user_repos(auth_token)
    repos.map do |repo|
      Repo.new(repo)
    end
  end
end