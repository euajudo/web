process.env.SITE_URL = 'http://local.euajudo.meteor.com:3000'

if Meteor.settings.SITE_URL?
	console.log 'setting site url', Meteor.settings.SITE_URL
	process.env.SITE_URL = Meteor.settings.SITE_URL

if Meteor.settings.PAYPAL_CLIENT_ID?
	process.env.PAYPAL_CLIENT_ID = Meteor.settings.PAYPAL_CLIENT_ID

if Meteor.settings.PAYPAL_CLIENT_SECRET?
	process.env.PAYPAL_CLIENT_SECRET = Meteor.settings.PAYPAL_CLIENT_SECRET