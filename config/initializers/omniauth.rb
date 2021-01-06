Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "c3a62cd2bfc1556d8602", "8902ea4ab6e80f8d86f9675e8adb041cd8661f4a"
  else
    provider :github,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end
end
