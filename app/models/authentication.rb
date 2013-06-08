class Authentication < ActiveRecord::Base
  attr_accessible :provider, :uid, :user_id, :token, :token_secret
  belongs_to :user
  def provider_name
    if provider == 'open_id'
      "OpenID"
    else
      provider.titleize
    end
  end
end
