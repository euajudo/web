requiredLogin = (path, next) ->
	redirectPath = if (!Meteor.userId()) then "/" else null
	next redirectPath

FlowRouter.route '/',
	# subscriptions: (params) ->
	# 	console.log("subscribe and register this subscription as 'myPost'");
		# this.register('myPost', Meteor.subscribe('blogPost', params.postId));

	action: (params) ->
		GAnalytics.pageview params[0]
		# console.log("Yeah! We are on the post:", params.postId);
		FlowLayout.render('DashboardView', {featured: 'FeaturedCampaigns'});


FlowRouter.route '/campanha/:campaignName/:campaignId',
	action: (params) ->
		GAnalytics.pageview params[0]
		Session.set 'CurrentCampaign', params.campaignId
		FlowLayout.render 'CampaignView'


FlowRouter.route '/nova-campanha',
	middlewares: [requiredLogin]
	action: (params) ->
		GAnalytics.pageview params[0]
		FlowLayout.render 'NewCampaignView'


FlowRouter.route '/minhas-campanhas',
	middlewares: [requiredLogin]
	action: (params) ->
		GAnalytics.pageview params[0]
		FlowLayout.render 'MyCampaignsView', {campaigns: 'MyCampaigns'}


FlowRouter.route '/minhas-doacoes',
	middlewares: [requiredLogin]
	action: (params) ->
		GAnalytics.pageview params[0]
		FlowLayout.render 'MyDonatedCampaignsView'


FlowRouter.route '/campanhas-do-usuario/:username/:userId',
	action: (params) ->
		GAnalytics.pageview params[0]
		Session.set 'userId', params.userId
		FlowLayout.render 'UserCampaignsView'


FlowRouter.route '/criar-conta',
	action: (params) ->
		GAnalytics.pageview params[0]
		FlowLayout.render 'NewPersonView'


FlowRouter.route '/criar-organizacao',
	action: (params) ->
		GAnalytics.pageview params[0]
		FlowLayout.render 'NewOrganizationView'


FlowRouter.route '/sobre',
	action: (params) ->
		GAnalytics.pageview params[0]
		FlowLayout.render 'SobreView'