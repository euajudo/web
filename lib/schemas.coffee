@Schema = {}
@Schema.newPerson = new SimpleSchema
	name:
		type: String
		label: 'Nome'
		max: 50
	email:
		type: String
		regEx: SimpleSchema.RegEx.Email
		label: 'E-mail'
	type:
		type: String
		allowedValues: ['Person', 'Organization']
		defaultValue: 'Person'
		label: 'Tipo'
		autoform:
			options: [
				{label: "Pessoa Física", value: "Person"}
				{label: "Organização", value: "Organization"}
			]
	password:
		type: String
		label: 'Senha'
		max: 50
		min: 6
		autoform:
			afFieldInput:
				type: 'password'
	passwordConfirmation:
		type: String
		min: 6
		label: 'Confirmar Senha'
		custom: ->
			if this.value isnt this.field('password').value
				return 'mustBeEqual'
		autoform:
			afFieldInput:
				type: 'password'


@Schema.newOrganization = new SimpleSchema
	name:
		type: String
		label: 'Nome'
		max: 50
	email:
		type: String
		regEx: SimpleSchema.RegEx.Email
		label: 'E-mail'
	password:
		type: String
		label: 'Senha'
		max: 50
		min: 6
		autoform:
			afFieldInput:
				type: 'password'
	passwordConfirmation:
		type: String
		min: 6
		label: 'Confirmar Senha'
		custom: ->
			if this.value isnt this.field('password').value
				return 'mustBeEqual'
		autoform:
			afFieldInput:
				type: 'password'