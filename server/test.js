Meteor.methods({
	test: function() {
		if (arguments.length == 1)
			return arguments[0]
		return arguments
	}
})