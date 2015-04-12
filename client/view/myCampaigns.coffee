Template.MyCampaignsView.helpers
	campaigns: ->
		return Campaigns.find({'user._id': Meteor.userId()}, {sort: {createdAt: 1}})