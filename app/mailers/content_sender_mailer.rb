class ContentSenderMailer < ApplicationMailer
  default from: 'admin@swastikcollege.edu.np'
 
  def password_send(name, username, email, password)
    @name = name
    @username = username
    @password = password
    mail(to: "#{name} <#{email}>", subject: 'Your college has created your educational email.')
  end
end
