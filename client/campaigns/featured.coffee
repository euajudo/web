Template.FeaturedCampaigns.onCreated ->
	this.data.intl =
		locales: ['pt-BR']

Template.FeaturedCampaigns.helpers
	campaigns: ->
		return Campaigns.find({}, {limit: 30, sort: {createdAt: 1}})
	percent: ->
		percent = 100/@targetValue*@donatedValue
		if percent > 100
			return 0
		return 100 - percent


Template.FeaturedCampaigns.events
	'click .campaign': (e) ->
		FlowRouter.go "/campanha/#{@name}/#{@_id}"
