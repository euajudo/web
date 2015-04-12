Template.MyDonatedCampaignsView.helpers
	campaigns: ->
		query = {}
		query["donations.#{Meteor.userId()}"] = $exists: true
		return Campaigns.find(query, {sort: {createdAt: 1}})