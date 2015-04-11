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


### Users
  @param email
  @param password
  @param name
  @param type [organization, person]
###
@Users = Meteor.users