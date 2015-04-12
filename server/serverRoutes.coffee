# postRoutes = Picker.filter (req, res) ->
# 	console.log req
	# return req.method == "POST";

bodyParser = Meteor.npmRequire('body-parser')
Picker.middleware bodyParser()

Picker.route '/assinaturas', (params, req, res, next) ->
	console.log params
	console.log req.url
	console.log req.body
	res.end()