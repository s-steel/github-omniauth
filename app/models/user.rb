class User < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :uid
  validates_presence_of :provider

  def self.create_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.name = auth['info']['name']
    end
  end
end
