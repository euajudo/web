### Campaings
	@param name
	@param createdAt
	@param description
	@param mainMedia
		- type [video, image]
		- url
		- videoUrl
###
@Campaigns = new Meteor.Collection 'campaigns'
@Campaigns.attachSchema new SimpleSchema
	name:
		type: String
		label: "Nome"
		max: 200
	description:
		type: String
		label: "Descrição"
	createdAt:
		type: Date
		label: "Criado em"
		autoValue: ->
			if @isInsert
				return new Date
			if @isUpsert
				return $setOnInsert: new Date
			@unset()

	mainMedia:
		type: Object
		label: 'Media'
		optional: true
	'mainMedia.type':
		type: String
		allowedValues: ['Person', 'Organization'],
	'mainMedia.url':
		type: String
		regEx: SimpleSchema.RegEx.Url
	'mainMedia.videoUrl':
		type: String
		regEx: SimpleSchema.RegEx.Url
		optional: true


### Users
	@param email
	@param password
	@param name
	@param type [organization, person]
###
@Users = Meteor.users