Template.FeaturedCampaigns.helpers
	campaigns: ->
		return Campaigns.find({}, {limit: 3, sort: {createdAt: 1}})


Template.AllCampaigns.helpers
	campaigns: ->
		return Campaigns.find({}, {limit: 30, sort: {createdAt: 1}})


Template.CampaignView.helpers
	campaign: ->
		return Campaigns.findOne({_id: Session.get('CurrentCampaign')})


Template.AllCampaigns.events
	'click .campaign': (e) ->
		FlowRouter.go "/campanha/#{@name}/#{@_id}"


Template.FeaturedCampaigns.events
	'click .campaign': (e) ->
		FlowRouter.go "/campanha/#{@name}/#{@_id}"
