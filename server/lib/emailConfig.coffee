Accounts.emailTemplates.from = "no-reply <no-reply@carddi.mobi>";

if Meteor.settings.MAIL_URL?
	console.log 'setting email', Meteor.settings.MAIL_URL
	process.env.MAIL_URL = Meteor.settings.MAIL_URL