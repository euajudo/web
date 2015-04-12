@Bootstrap = ->
	if Users.find().count() is 0
		Accounts.createUser
			email: 'test@euajudo.io'
			password: '123456'
			profile:
				name: 'Usuário Teste'
				type: 'Person'


	getUser = ->
		return {
			_id: Users.findOne({'emails.address': 'test@euajudo.io'})._id
			name: Users.findOne({'emails.address': 'test@euajudo.io'}).profile.name
			type: Users.findOne({'emails.address': 'test@euajudo.io'}).profile.type
		}


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
				user: getUser()
				createdAt: new Date
				mainMedia: media
				description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni.'
				type: 'monthly'
				targetValue: 6000
				donatedValue: 2000

		Campaigns.insert
			name: "Ajude o João"
			user: getUser()
			createdAt: new Date
			mainMedia:
				type: 'image'
				url: process.env.SITE_URL + '/ajude-o-joao.jpg'
			description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga porro nulla quos, numquam quaerat sunt ducimus a nesciunt dolor ad, aut excepturi repellat eveniet! Praesentium ipsa cupiditate placeat et fugit.'
			type: 'monthly'
			targetValue: 60000
			donatedValue: 1230

		Campaigns.insert
			name: "Animais Carentes"
			user: getUser()
			createdAt: new Date
			mainMedia:
				type: 'image'
				url: process.env.SITE_URL + '/animais-carentes.jpg'
			description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga porro nulla quos, numquam quaerat sunt ducimus a nesciunt dolor ad, aut excepturi repellat eveniet! Praesentium ipsa cupiditate placeat et fugit.'
			type: 'monthly'
			targetValue: 6000
			donatedValue: 6000

		Campaigns.insert
			name: "Asilo Padre Cacique"
			user: getUser()
			createdAt: new Date
			mainMedia:
				type: 'image'
				url: process.env.SITE_URL + '/asilo-padre-cacique.jpg'
			description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga porro nulla quos, numquam quaerat sunt ducimus a nesciunt dolor ad, aut excepturi repellat eveniet! Praesentium ipsa cupiditate placeat et fugit.'
			type: 'monthly'
			targetValue: 600000
			donatedValue: 212450


Meteor.startup ->
	Bootstrap()