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
		allowedValues: ['Image', 'Video']
		defaultValue: 'Image'
	'mainMedia.url':
		label: 'Image URL'
		type: String
		regEx: SimpleSchema.RegEx.Url
		optional: true
	'mainMedia.videoUrl':
		label: 'Video URL'
		type: String
		# regEx: SimpleSchema.RegEx.Url
		optional: true

	user:
		type: Object
		label: 'Criado por'
		autoValue: ->
			if @value then return @value
			return {
				_id: @userId
				name: Users.findOne(@userId).profile.name or Users.findOne(@userId).emails[0].address
				type: Users.findOne(@userId).profile.type
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


Images = new FS.Collection "images",
	stores: [new FS.Store.GridFS "images"]
