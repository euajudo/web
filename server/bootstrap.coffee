Meteor.startup ->
	# Campaigns.remove({})
	if Campaigns.find().count() is 0
		for i in [1..10]
			Campaigns.insert
				name: "Campanha #{i}"
				createdAt: new Date
				description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni.'