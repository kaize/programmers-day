module AuthHelper
  def basic_auth
    return if Rails.env.staging?
    return if Rails.env.test?

    authenticate_or_request_with_http_basic do |user, password|
      user == configus.basic_auth.username && password == configus.basic_auth.password
    end
  end

  def staging_basic_auth
    return unless Rails.env.staging?

    authenticate_or_request_with_http_basic do |user, password|
      user == configus.basic_auth.username && password == configus.basic_auth.password
    end
  end

end
