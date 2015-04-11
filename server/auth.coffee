Meteor.methods
	newPerson: (doc) ->
		check doc, Schema.newPerson

		Accounts.createUser
			email: doc.email
			password: doc.password
			profile:
				name: doc.name
				type: 'Person'
