tk = "#{process.env.MOIP_TOKEN}:#{process.env.MOIP_KEY}"
tk = new Buffer(tk).toString('base64')
headers =
	Authorization: "Basic #{tk}"
	"user-agent": 'Mozilla/4.0'


preferencesData = {
	"notification": {
		"webhook": {
			"url": "https://euajudo.localtunnel.me/assinaturas"
		},
		"email": {
			"merchant": {
				"enabled": true
			},
			"customer": {
				"enabled": true
			}
		}
	}
}

preferencesResponse = HTTP.post 'https://sandbox.moip.com.br/assinaturas/v1/users/preferences',
	data: preferencesData
	headers: headers

# console.log 'preferencesResponse', preferencesResponse

Meteor.methods
	plan: ->
		planData =
			"code": "plano-" + Date.now()
			"name": "Plano Especial"
			"amount": 100
			"setup_fee": 0
			"status": "ACTIVE"
			"interval":
				"length": 1
				"unit": "MONTH"

		planResponse = HTTP.post 'https://sandbox.moip.com.br/assinaturas/v1/plans',
			data: planData
			headers: headers

		# console.log 'planResponse', planResponse

		clientData =
			"code": "cliente-" + Date.now()
			"email": "rodrigoknascimento@gmail.com"
			"fullname": "Nome Sobrenome"
			"cpf": "22222222222"
			"phone_area_code": "11"
			"phone_number": "934343434"
			"birthdate_day": "26"
			"birthdate_month": "04"
			"birthdate_year": "1980"
			"address":
				"street": "Rua Nome da Rua"
				"number": "100"
				"complement": "Casa"
				"district": "Nome do Bairro"
				"city": "São Paulo"
				"state": "SP"
				"country": "BRA"
				"zipcode": "05015010"
			"billing_info":
				"credit_card":
					"holder_name": "Nome Completo"
					"number": "4111111111111111"
					"expiration_month": "04"
					"expiration_year": "15"

		clientResponse = HTTP.post "https://sandbox.moip.com.br/assinaturas/v1/customers?new_vault=true",
			data: clientData
			headers: headers

		# console.log 'clientResponse', clientResponse

		subscriptionData =
			"code": "assinatura-" + Date.now()
			"amount": "100"
			"plan" :
				"code": planData.code
			"customer":
				"code": clientData.code

		subscriptionResponse = HTTP.post "https://sandbox.moip.com.br/assinaturas/v1/subscriptions",
			data: subscriptionData
			headers: headers

		# console.log 'subscriptionResponse', subscriptionResponse


