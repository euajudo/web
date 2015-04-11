@Campaigns = new Meteor.Collection 'campaigns'
@Campaigns.attachSchema new SimpleSchema
	name:
		type: String
		label: "Nome"
		max: 100
	description:
		type: String
		label: "Descrição"
		max: 10000
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

	user:
		type: Object
		label: 'Criado por'
		autoValue: ->
			return {
				_id: @userId
				name: Users.findOne(@userId).profile.name or Users.findOne(@userId).emails[0].address
			}
	'user._id':
		type: String
	'user.name':
		type: String


### Users
	@param email
	@param password
	@param name
	@param type [organization, person]
###
@Users = Meteor.users