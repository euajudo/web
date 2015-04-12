@Bootstrap = ->
	if Users.find().count() is 0

		Accounts.createUser
			email: 'pao-dos-pobres@euajudo.io'
			password: '123456'
			profile:
				name: 'Pão dos Pobres'
				type: 'Person'

		Accounts.createUser
			email: 'leonardo-konarzewski@euajudo.io'
			password: '123456'
			profile:
				name: 'Leonardo Konarzewski'
				type: 'Person'

		Accounts.createUser
			email: 'asilo-padre-cacique@euajudo.io'
			password: '123456'
			profile:
				name: 'Asilo Padre Cacique'
				type: 'Person'

		Accounts.createUser
			email: 'rafaela-mendonca@euajudo.io'
			password: '123456'
			profile:
				name: 'Rafaela Mendonça'
				type: 'Person'

		Accounts.createUser
			email: 'felipe-madeira@euajudo.io'
			password: '123456'
			profile:
				name: 'Felipe Madeira'
				type: 'Person'

		Accounts.createUser
			email: 'joana-silva@euajudo.io'
			password: '123456'
			profile:
				name: 'Joana Silva'
				type: 'Person'


	getUser = (name) ->
		return {
			_id: Users.findOne({'profile.name': name})._id
			name: Users.findOne({'profile.name': name}).profile.name
			type: Users.findOne({'profile.name': name}).profile.type
		}


	if Campaigns.find().count() is 0
		# [Location] Porto Alegre, RS
		Campaigns.insert
			name: "Pão dos Pobres"
			user: getUser('Pão dos Pobres')
			createdAt: new Date
			mainMedia:
				type: 'video'
				url: 'http://img.youtube.com/vi/ZTA8u8oDYUc/hqdefault.jpg'
				videoUrl: 'ZTA8u8oDYUc'
			description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga porro nulla quos, numquam quaerat sunt ducimus a nesciunt dolor ad, aut excepturi repellat eveniet! Praesentium ipsa cupiditate placeat et fugit.'
			type: 'monthly'
			targetValue: 6000
			donatedValue: 6000


		# [Location] Porto Alegre, RS
		Campaigns.insert
			name: "Ajude-me a Vencer o Câncer!"
			user: getUser('Leonardo Konarzewski')
			createdAt: new Date
			mainMedia:
				type: 'image'
				url: process.env.SITE_URL + '/02.jpg'
			description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga porro nulla quos, numquam quaerat sunt ducimus a nesciunt dolor ad, aut excepturi repellat eveniet! Praesentium ipsa cupiditate placeat et fugit.'
			type: 'monthly'
			targetValue: 900000
			donatedValue: 320000


		# [Location] Porto Alegre, RS
		Campaigns.insert
			name: "Asilo Padre Cacique"
			user: getUser('Asilo Padre Cacique')
			createdAt: new Date
			mainMedia:
				type: 'image'
				url: process.env.SITE_URL + '/03.jpg'
			description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga porro nulla quos, numquam quaerat sunt ducimus a nesciunt dolor ad, aut excepturi repellat eveniet! Praesentium ipsa cupiditate placeat et fugit.'
			type: 'monthly'
			targetValue: 30000
			donatedValue: 25000


		# [Location] Curitiba, PR
		Campaigns.insert
			name: "Ajude o João"
			user: getUser('Rafaela Mendonça')
			createdAt: new Date
			mainMedia:
				type: 'image'
				url: process.env.SITE_URL + '/04.jpg'
			description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga porro nulla quos, numquam quaerat sunt ducimus a nesciunt dolor ad, aut excepturi repellat eveniet! Praesentium ipsa cupiditate placeat et fugit.'
			type: 'monthly'
			targetValue: 2000
			donatedValue: 1230


		# [Location] São Paulo, SP
		Campaigns.insert
			name: "Animais Carentes"
			user: getUser('Felipe Madeira')
			createdAt: new Date
			mainMedia:
				type: 'image'
				url: process.env.SITE_URL + '/05.jpg'
			description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga porro nulla quos, numquam quaerat sunt ducimus a nesciunt dolor ad, aut excepturi repellat eveniet! Praesentium ipsa cupiditate placeat et fugit.'
			type: 'monthly'
			targetValue: 10000
			donatedValue: 1230


		# [Location] Gravataí, RS
		Campaigns.insert
			name: "Doação para Vila Maria"
			user: getUser('Joana Silva')
			createdAt: new Date
			mainMedia:
				type: 'image'
				url: process.env.SITE_URL + '/06.jpg'
			description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga porro nulla quos, numquam quaerat sunt ducimus a nesciunt dolor ad, aut excepturi repellat eveniet! Praesentium ipsa cupiditate placeat et fugit.'
			type: 'monthly'
			targetValue: 20000
			donatedValue: 0



		# for i in [1..4]
		# 	if i % 2 is 0
		# 		media =
		# 			type: 'video'
		# 			videoUrl: 'I4lgl7ImHSg'
		# 			url: 'http://img.youtube.com/vi/I4lgl7ImHSg/hqdefault.jpg'
		# 	else
		# 		media =
		# 			type: 'image'
		# 			url: 'http://www.spacetimestudios.com/attachment.php?attachmentid=60372&d=1391102003'

		# 	Campaigns.insert
		# 		name: "Campanha #{i}"
		# 		user: getUser()
		# 		createdAt: new Date
		# 		mainMedia: media
		# 		description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore, voluptatem, et. Dolor corporis tenetur nihil sit, magnam exercitationem, assumenda molestias pariatur soluta ullam maxime repellendus alias eaque impedit recusandae. Magni.'
		# 		type: 'monthly'
		# 		targetValue: 6000
		# 		donatedValue: 2000

		# Campaigns.insert
		# 	name: "Ajude o João"
		# 	user: getUser()
		# 	createdAt: new Date
		# 	mainMedia:
		# 		type: 'image'
		# 		url: process.env.SITE_URL + '/ajude-o-joao.jpg'
		# 	description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga porro nulla quos, numquam quaerat sunt ducimus a nesciunt dolor ad, aut excepturi repellat eveniet! Praesentium ipsa cupiditate placeat et fugit.'
		# 	type: 'monthly'
		# 	targetValue: 60000
		# 	donatedValue: 1230

		# Campaigns.insert
		# 	name: "Animais Carentes"
		# 	user: getUser()
		# 	createdAt: new Date
		# 	mainMedia:
		# 		type: 'image'
		# 		url: process.env.SITE_URL + '/animais-carentes.jpg'
		# 	description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga porro nulla quos, numquam quaerat sunt ducimus a nesciunt dolor ad, aut excepturi repellat eveniet! Praesentium ipsa cupiditate placeat et fugit.'
		# 	type: 'monthly'
		# 	targetValue: 6000
		# 	donatedValue: 6000

		# Campaigns.insert
		# 	name: "Asilo Padre Cacique"
		# 	user: getUser()
		# 	createdAt: new Date
		# 	mainMedia:
		# 		type: 'image'
		# 		url: process.env.SITE_URL + '/asilo-padre-cacique.jpg'
		# 	description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fuga porro nulla quos, numquam quaerat sunt ducimus a nesciunt dolor ad, aut excepturi repellat eveniet! Praesentium ipsa cupiditate placeat et fugit.'
		# 	type: 'monthly'
		# 	targetValue: 600000
		# 	donatedValue: 212450


# Meteor.startup ->
# 	Bootstrap()