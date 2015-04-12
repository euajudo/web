Template.CampaignView.helpers
	campaign: ->
		return Campaigns.findOne({_id: Session.get('CurrentCampaign')})

	helpActivated: ->
		return Session.get 'helpActivated'


Template.CampaignView.events
	'click #helpCampaign': ->
		Session.set 'helpActivated', true

	'click #cancelDonate': ->
		Session.set 'helpActivated', false