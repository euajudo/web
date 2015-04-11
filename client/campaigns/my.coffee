Template.MyCampaigns.helpers
	campaigns: ->
		return Campaigns.find({'user._id': Meteor.userId()}, {sort: {createdAt: 1}})


Template.MyCampaigns.events
	'click .campaign': (e) ->
		FlowRouter.go "/campanha/#{@name}/#{@_id}"
