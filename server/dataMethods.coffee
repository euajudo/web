Meteor.methods
	allCampaigns: ->
		return Campaigns.find().fetch()

	bootstrap: ->
		Campaigns.remove({})
		Users.remove({})

		Bootstrap()