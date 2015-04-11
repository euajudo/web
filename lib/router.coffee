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