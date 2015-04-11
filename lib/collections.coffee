### Campaings
  @param name
  @param createdAt
  @param description
  @param mainMedia
    - type
    - url
###
@Campaigns = new Meteor.Collection 'campaigns'


### Users
  @param email
  @param password
  @param name
  @param type [organization, person]
###
@Users = Meteor.users