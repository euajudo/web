Meteor.methods
	allCampaigns: ->
		return Campaigns.find().fetch()