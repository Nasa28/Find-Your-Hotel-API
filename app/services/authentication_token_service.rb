class AuthenticationTokenService
      HMAC_SECRET= ENV['HMAC_SECRET']
      ALGORITHM_TYPE = ENV['ALGORITHM_TYPE']
  def self.encode(user_id)
    payload = {user_id: user_id}
  JWT.encode payload, HMAC_SECRET, ALGORITHM_TYPE
  end
end