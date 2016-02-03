class TeamMembersMailer < ApplicationMailer
	default from: "TeamMembersMailer@learnyourwords.com"

	layout "team_members_mailer"

	def send_message(admin, team_members, message)
    @admin = admin
		@team_members = team_members
		@message = message
		emails = @team_members.collect(&:email).join(",")
    mail(to: emails, subject: 'LearnWords -  Message From Admin',
         template_path: 'layouts',
         template_name: 'team_members_mailer')
  end
end
