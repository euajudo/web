Template.CampaignView.helpers
	campaign: ->
		return Campaigns.findOne({_id: Session.get('CurrentCampaign')})
