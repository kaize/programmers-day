class MemberMailer < ActionMailer::Base
  layout "email"
  default_url_options[:host] = configus.mailer.default_url
  default from: configus.mailer.default_from

  def welcome(member)
    @member = member
    mail(to: "#{@member.full_name} <#{@member.email}>")
  end

end
