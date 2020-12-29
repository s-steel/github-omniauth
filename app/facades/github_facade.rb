class GithubFacade

  def self.user_repos(auth_token)
    repos = GithubService.user_repos(auth_token)
    repos.map do |repo|
      Repository.new(repo)
    end
  end
end