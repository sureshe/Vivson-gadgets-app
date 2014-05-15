class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # default from: ENV['from_email']
 
  def welcome_email(contact)
  	@contact = contact
    mail(to: 'sureshreddy.srd@gmail.com', subject: "Gadget Inventory")
  end

  def send_qi_by_email(qi, mail)
  	@qi = qi
    mail(to: mail, subject: "Gadget Inventory")
  end

  def send_mail_to_admins(registed_user)
  	admins_mails = []
  	@registed_user = registed_user

  	if !User.all.empty?
	  	User.all.each do |user|
	  		admins_mails << user.email if user.has_role? :Administrator
	  	end

	  	if !admins_mails.empty?
	  		mail(to: admins_mails, subject: "New user registered.")
	  	end
	  	
	  end
	end
end
