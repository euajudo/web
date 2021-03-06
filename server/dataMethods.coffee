Meteor.methods
	userCampaigns: (userId) ->
		data = Campaigns.find({'user._id': userId}, {sort: {createdAt: 1}}).fetch()
		for item in data
			item.canonicalUrl = encodeURI("#{process.env.SITE_URL}/campanha/#{item.name}/#{item._id}")
		return data

	allCampaigns: ->
		data = Campaigns.find({}, {sort: {createdAt: 1}}).fetch()
		for item in data
			item.canonicalUrl = encodeURI("#{process.env.SITE_URL}/campanha/#{item.name}/#{item._id}")
		return data

	myDonatedCampaigns: ->
		if not @userId?
			return 401

		query = {}
		query["donations.#{@userId}"] = $exists: true
		data = Campaigns.find(query, {sort: {createdAt: 1}}).fetch()
		for item in data
			item.canonicalUrl = encodeURI("#{process.env.SITE_URL}/campanha/#{item.name}/#{item._id}")
		return data

	userInfo: ->
		if @userId?
			return Meteor.users.findOne(@userId)

	donate: (value, campaignId) ->
		if not @userId?
			return 401

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