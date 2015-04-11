Meteor.methods
	allCampaigns: ->
		data = Campaigns.find().fetch()
		for item in data
			item.canonicalUrl = encodeURI("#{process.env.SITE_URL}/campanha/#{item.name}/#{item._id}")
		return data

	userInfo: ->
		if @userId?
			return Meteor.users.findOne(@userId)

	bootstrap: ->
		Campaigns.remove({})
		Users.remove({})

		Bootstrap()