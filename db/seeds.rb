#encoding: utf-8

#u = User.find_or_initialize_by_email 'admin@programmers-day.ru'
#u.password = '1234'
#u.first_name = 'Site'
#u.last_name = 'Admin'
#u.state = 'active'
#u.save

page_info = Page.find_or_initialize_by_uri 'info'
page_info.name = 'Информация и программа'
page_info.save

page_org = Page.find_or_initialize_by_uri 'org'
page_org.name = 'Организаторы и партнёры'
page_org.save

page_feedback = Page.find_or_initialize_by_uri 'feedback'
page_feedback.name = 'Вопросы'
page_feedback.save

page_subscribe = Page.find_or_initialize_by_uri 'subscribe'
page_subscribe.name = 'Подписка'
page_subscribe.save

['1', '2', '3', '4', '5', '6', 'Выпускник', 'Абитуриент'].each do |name|
  course = Course.find_or_initialize_by_name name
  course.save
end
