SimpleSchema.messages
	required: '[label] é requerido'
	minString: '[label] must be at least [min] characters'
	maxString: '[label] não pode exceder [max] caracteres'
	minNumber: '[label] must be at least [min]'
	maxNumber: '[label] cannot exceed [max]'
	minDate: '[label] must be on or after [min]'
	maxDate: '[label] cannot be after [max]'
	badDate: '[label] is not a valid date'
	minCount: 'You must specify at least [minCount] values'
	maxCount: 'You cannot specify more than [maxCount] values'
	noDecimal: '[label] must be an integer'
	notAllowed: '[value] não é um valor permitido'
	expectedString: '[label] deve ser texto'
	expectedNumber: '[label] must be a number'
	expectedBoolean: '[label] must be a boolean'
	expectedArray: '[label] must be an array'
	expectedObject: '[label] must be an object'
	expectedConstructor: '[label] must be a [type]'
	mustBeEqual: '[label] não é valido'
	regEx: [
		{msg: '[label] failed regular expression validation'}
		{exp: SimpleSchema.RegEx.Email, msg: '[label] deve ser um endereço de email válido'}
		{exp: SimpleSchema.RegEx.WeakEmail, msg: '[label] deve ser um endereço de email válido'}
		{exp: SimpleSchema.RegEx.Domain, msg: '[label] must be a valid domain'}
		{exp: SimpleSchema.RegEx.WeakDomain, msg: '[label] must be a valid domain'}
		{exp: SimpleSchema.RegEx.IP, msg: '[label] must be a valid IPv4 or IPv6 address'}
		{exp: SimpleSchema.RegEx.IPv4, msg: '[label] must be a valid IPv4 address'}
		{exp: SimpleSchema.RegEx.IPv6, msg: '[label] must be a valid IPv6 address'}
		{exp: SimpleSchema.RegEx.Url, msg: '[label] deve ser uma URL válida'}
		{exp: SimpleSchema.RegEx.Id, msg: '[label] must be a valid alphanumeric ID'}
	]
	keyNotInSchema: '[key] is not allowed by the schema'