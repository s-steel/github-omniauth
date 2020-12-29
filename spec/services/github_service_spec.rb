require 'rails_helper'

describe 'Github Service' do
  it 'will return repo data' do
    response = GithubService.user_repos('81f708c7f18b40b38af4859d63a6416a9d414720')
    require 'pry', binding.pry
    expect(response.length).to eq(47)
    expect(response[0][:name]).to eq('activerecord-obstacle-course')
  end
end
