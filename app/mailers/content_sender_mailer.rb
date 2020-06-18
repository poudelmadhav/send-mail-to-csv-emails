class ContentSenderMailer < ApplicationMailer
  default from: "#{ENV['FROM_NAME'].blank? ? 'Madhav Paudel' : ENV['FROM_NAME']} <#{ENV['FROM_EMAIL'].blank? ? 'madhav@paudelmadhav.com.np': ENV['FROM_EMAIL']}>"
 
  def password_send(name, username, email, password)
    @name = name
    @username = username
    @password = password
    mail(to: "#{name} <#{email}>", subject: 'Your college has created educational email for you.')
  end
end
