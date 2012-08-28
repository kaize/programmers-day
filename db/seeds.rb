u = User.find_or_initialize_by_email 'admin@programmers-day.ru'
u.password = '1234'
u.save
