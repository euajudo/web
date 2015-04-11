Meteor.startup ->
	if Campaigns.find().count() is 0
		for [1..10]
			Campaigns.insert
				name: 'Campanha 1'
				description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni.'