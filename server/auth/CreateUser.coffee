if Meteor.users.find().count() is 0
  #create first user for auth
  user = Accounts.createUser
    username: 'Admin'
    email: 'admin@admin.com'
    password: 'admin'
