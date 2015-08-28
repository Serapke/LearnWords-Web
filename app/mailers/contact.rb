class Contact < ApplicationMailer
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.send_message.subject
  #
  def send_message(name, email, comment)

    @from = "From: " + name
	@email = email
	# zinutes tema
	@comment = comment

    mail to: "M.Serapinas@gmail.com", subject: 'LearnwWords Contacts Message'
  end
end
