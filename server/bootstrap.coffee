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
			if i % 2 is 0
				media =
					type: 'video'
					videoUrl: 'I4lgl7ImHSg'
					url: 'http://img.youtube.com/vi/I4lgl7ImHSg/hqdefault.jpg'
			else
				media =
					type: 'image'
					url: 'http://www.spacetimestudios.com/attachment.php?attachmentid=60372&d=1391102003'

			Campaigns.insert
				name: "Campanha #{i}"
				user:
					_id: Users.findOne({'emails.address': 'test@euajudo.io'})._id
					name: Users.findOne({'emails.address': 'test@euajudo.io'}).profile.name
					type: Users.findOne({'emails.address': 'test@euajudo.io'}).profile.type
				createdAt: new Date
				mainMedia: media
				description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni.'



Meteor.startup ->
	Bootstrap()