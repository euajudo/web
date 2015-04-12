Meteor.methods
	newPerson: (doc) ->
		Schema.newPerson.newContext().validate doc

		id = Accounts.createUser
			email: doc.email
			password: doc.password
			profile:
				name: doc.name
				type: 'Person'

		return {
			user: Meteor.users.findOne id
			password: doc.password
		}


	newOrganization: (doc) ->
		Schema.newOrganization.newContext().validate doc

		id = Accounts.createUser
			email: doc.email
			password: doc.password
			profile:
				name: doc.name
				type: 'Organization'

		return {
			user: Meteor.users.findOne id
			password: doc.password
		}