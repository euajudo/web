@Bootstrap = ->
	if Users.find().count() is 0
		Accounts.createUser
			email: 'test@euajudo.io'
			password: '123456'
			profile:
				name: 'Usuário Teste'
				type: 'Person'


	if Campaigns.find().count() is 0
		for i in [1..4]
			Campaigns.insert
				name: "Campanha #{i}"
				user:
					_id: Users.findOne({'emails.address': 'test@euajudo.io'})._id
					name: Users.findOne({'emails.address': 'test@euajudo.io'}).profile.name
					type: Users.findOne({'emails.address': 'test@euajudo.io'}).profile.type
				createdAt: new Date
				mainMedia:
					videoUrl: 'I4lgl7ImHSg'
				description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni.'



Meteor.startup ->
	Bootstrap()