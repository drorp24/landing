class UserMailer < ActionMailer::Base
  default :from => "info@paykido.com"
 
  def welcome_email(user)

    @user = user

    email_with_name = "#{@user.name} <#{@user.email}>"
    begin
      mail(:to => email_with_name, :subject => "Hello #{@user.name} and welcome to GoExit")
    rescue
      return false
    else
      return true
    end
  end
  
  
 end
