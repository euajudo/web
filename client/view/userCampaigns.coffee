Template.UserCampaignsView.helpers
	campaigns: ->
		return Campaigns.find({'user._id': Session.get('userId')}, {sort: {createdAt: 1}})