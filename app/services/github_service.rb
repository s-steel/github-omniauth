class GithubService

  def self.user_repos(auth_token)
    repo_response = conn.get('users/s-steel/repos') do |req|
      req.headers['access_token'] = auth_token
    end
    parse_it(repo_response)
  end

  private

  def self.conn
    Faraday.new('https://api.github.com')
  end

  def self.parse_it(data)
    JSON.parse(data.body, symbolize_names: true)
  end
end
