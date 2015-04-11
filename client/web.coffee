Template.FeaturedCampaigns.helpers
	campaigns: ->
		return Campaigns.find({}, {limit: 3, sort: {createdAt: 1}})


Template.AllCampaigns.helpers
	campaigns: ->
		return Campaigns.find({}, {limit: 30, sort: {createdAt: 1}})