Configus.build Rails.env do
  env :production do
    basic_auth do
      username 'admin'
      password 'Ls4l8g8shXCODu2Fst'
    end

    mailer do
      default_url 'prog73.ru'
      default_from 'noreply@prog73.ru'
    end
  end

  env :development, parent: :production do
    basic_auth do
      username 'admin'
      password '1234'
    end
  end

  env :test, parent: :development do
  end

  env :staging, parent: :production do
  end
end
