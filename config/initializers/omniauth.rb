Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '602183298260-bnd4sigijeh011o80ghc5q15ovu9g73i.apps.googleusercontent.com', 'gmFnshYkRWrlyPYeTGV4Tb7n', scope: 'userinfo.profile,youtube'
end