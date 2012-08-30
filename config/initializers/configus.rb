Configus.build Rails.env do
  env :production do
    basic_auth do
      username 'admin'
      password 'Ls4l8g8shXCODu2Fst'
    end
  end

  env :development do
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
