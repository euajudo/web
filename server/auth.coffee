Meteor.methods
	newPerson: (doc) ->
		Schema.newPerson.newContext().validate doc

		Accounts.createUser
			email: doc.email
			password: doc.password
			profile:
				name: doc.name
				type: 'Person'


	newOrganization: (doc) ->
		Schema.newOrganization.newContext().validate doc

		Accounts.createUser
			email: doc.email
			password: doc.password
			profile:
				name: doc.name
				type: 'Organization'