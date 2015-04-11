Template.profileButton.helpers
	getUserName: ->
		user = Meteor.user()
		return user.profile.name or user.username or user.emails?[0]?.address

Template.profileButton.events
	'click #logoutButton': (e) ->
		Meteor.logout()
