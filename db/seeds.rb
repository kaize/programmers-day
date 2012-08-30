#u = User.find_or_initialize_by_email 'admin@programmers-day.ru'
#u.password = '1234'
#u.first_name = 'Site'
#u.last_name = 'Admin'
#u.state = 'active'
#u.save

page_info = Page.find_or_initialize_by_uri 'info'
page_info.name = 'Information & programm'
page_info.save

page_org = Page.find_or_initialize_by_uri 'org'
page_org.name = 'Organizators & partners'
page_org.save

page_feedback = Page.find_or_initialize_by_uri 'feedback'
page_feedback.name = 'Questions'
page_feedback.save

