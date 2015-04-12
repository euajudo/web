AutoForm.addHooks null,
	onError: (formType, error) ->
		console.log arguments

AutoForm.addHooks 'NewPersonForm',
	onSuccess: (formType, result) ->
		Meteor.loginWithPassword({email: result.user.emails[0].address}, result.password)
		$('#LoginModal').modal('hide')