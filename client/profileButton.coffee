Template.profileButton.helpers
	getUserName: ->
		user = Meteor.user()
		return user.profile.name or user.username or user.emails?[0]?.address