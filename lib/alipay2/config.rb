require 'active_support/configurable'

module Alipay2
  include ActiveSupport::Configurable

  configure do |config|
    config.sandbox = false
    config.pid = nil
    config.appid = nil
    config.target_id = nil
    config.oauth_url = 'https://openauth.alipay.com/oauth2/appToAppAuth.htm'
    config.oauth_callback = nil
    config.return_url = nil
    config.notify_url = nil
    config.rsa2_pem = 'config/alipay_rsa2.pem'
    config.rsa_pem = 'config/alipay_rsa.pem'
  end
end
