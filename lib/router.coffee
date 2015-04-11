requiredLogin = (path, next) ->
	redirectPath = if (!Meteor.userId()) then "/" else null
	next redirectPath

FlowRouter.route '/',
	# subscriptions: (params) ->
	# 	console.log("subscribe and register this subscription as 'myPost'");
		# this.register('myPost', Meteor.subscribe('blogPost', params.postId));

	action: (params) ->
		# console.log("Yeah! We are on the post:", params.postId);
		FlowLayout.render('DashboardView', {featured: 'FeaturedCampaigns', campaigns: 'AllCampaigns'});


FlowRouter.route '/campanha/:campaignName/:campaignId',
	action: (params) ->
		Session.set 'CurrentCampaign', params.campaignId
		FlowLayout.render 'CampaignView'


FlowRouter.route '/nova-campanha',
	middlewares: [requiredLogin]
	action: (params) ->
		FlowLayout.render 'NewCampaignView'


FlowRouter.route '/minhas-campanhas',
	middlewares: [requiredLogin]
	action: (params) ->
		FlowLayout.render 'MyCampaignsView', {campaigns: 'MyCampaigns'}


FlowRouter.route '/criar-conta',
	action: (params) ->
		FlowLayout.render 'NewPersonView'


FlowRouter.route '/criar-organizacao',
	action: (params) ->
		FlowLayout.render 'NewOrganizationView'