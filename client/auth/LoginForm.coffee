Template.Login.events
  "submit #login": (evt, template) ->
    username = template.find('#login-username').value
    password = template.find('#login-password').value
    Meteor.loginWithPassword username, password, (err) ->
      if Meteor.user()
        Router.go('/');
      else
        message = "There was an error logging in: <strong>#{err.reason}</strong>"
        $(template.find('#form-messages')).html message
        return
    false
