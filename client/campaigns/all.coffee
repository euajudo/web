Template.AllCampaigns.helpers
	campaigns: ->
		return Campaigns.find({}, {limit: 30, sort: {createdAt: 1}})


Template.AllCampaigns.events
	'click .campaign': (e) ->
		FlowRouter.go "/campanha/#{@name}/#{@_id}"
