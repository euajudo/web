Template.CampaignView.helpers
	campaign: ->
		return Campaigns.findOne({_id: Session.get('CurrentCampaign')})

	hasDonation: ->
		campaign = Campaigns.findOne({_id: Session.get('CurrentCampaign')})
		console.log campaign
		return campaign?.donations?[Meteor.userId()]?

	donationValue: ->
		campaign = Campaigns.findOne({_id: Session.get('CurrentCampaign')})
		return campaign?.donations?[Meteor.userId()]?.value or 0

	helpActivated: ->
		return Session.get 'helpActivated'

	percent: ->
		percent = 100/@targetValue*@donatedValue
		if percent > 100
			return 0
		return 100 - percent


Template.CampaignView.events
	'click #helpCampaign': ->
		Session.set 'helpActivated', true

	'click #cancelDonate': ->
		Session.set 'helpActivated', false

	'click #donateCampaign': ->
		if not Meteor.userId()?
			FlowRouter.go '/criar-conta'

		Session.set 'helpActivated', false
		campaign = Campaigns.findOne({_id: Session.get('CurrentCampaign')})
		value = parseInt $('#donateInput').val()

		Meteor.call 'donate', value, Session.get('CurrentCampaign')
