if Rails.env.test?
  Gibbon::Export.api_key = "fake"
  Gibbon::Export.throws_exceptions = false
end

Rails.configuration.mailchimp = Gibbon::API.new('8c0bb5a705013b54b5a118ab32d0d2d4-us8')
