class UserMailer < ActionMailer::Base
  default :from => "aaaaaa.bbbbbbb@gmail.com"
  
  def registration_confirmation(user)
    @user = user
    attachments["faco.png"] = File.read("#{Rails.root}/public/faco.png")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Generating store for you.....")
  end
end
