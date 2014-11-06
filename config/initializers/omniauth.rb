# OmniAuth.config.logger = Rails.logger
#
# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, ENV['FACEBOOK_472551706219746'], ENV['FACEBOOK_07ba9ffff86c0bdaebf583b37c730262']
# end

OmniAuth.config.logger = Rails.logger

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, FACEBOOK_472551706219746, FACEBOOK_07ba9ffff86c0bdaebf583b37c730262
# end
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_1528970907342665'], ENV['FACEBOOK_83cdceaf84775e82d39effe38f003929']
end

OmniAuth.config.on_failure = Proc.new { |env|
  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
}