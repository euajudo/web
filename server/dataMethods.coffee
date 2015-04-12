Meteor.methods
	allCampaigns: ->
		data = Campaigns.find({}, {sort: {createdAt: 1}}).fetch()
		for item in data
			item.canonicalUrl = encodeURI("#{process.env.SITE_URL}/campanha/#{item.name}/#{item._id}")
		return data

	userInfo: ->
		if @userId?
			return Meteor.users.findOne(@userId)

	donate: (value, campaignId) ->
		d = {}
		d["donations.#{@userId}"] = value: value
		Campaigns.update campaignId,
			$set: d
			$inc:
				donatedValue: value

		return Campaigns.findOne campaignId

	bootstrap: ->
		Campaigns.remove({})
		Users.remove({})

		Bootstrap()