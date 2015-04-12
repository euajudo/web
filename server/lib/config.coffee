process.env.SITE_URL = 'http://local.euajudo.meteor.com:3000'

if Meteor.settings.SITE_URL?
	console.log 'setting site url', Meteor.settings.SITE_URL
	process.env.SITE_URL = Meteor.settings.SITE_URL