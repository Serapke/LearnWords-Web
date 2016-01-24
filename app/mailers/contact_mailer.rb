class ContactMailer < ApplicationMailer
	default from: "from@example.com"

	layout "mailer"
	def send_message(name, email, comment)
    @name = name
    @email  = email
		@comment = comment
    mail(to: "M.Serapinas@gmail.com", subject: 'LearnWords Contact Query',
         template_path: 'layouts',
         template_name: 'mailer')
  end
end
