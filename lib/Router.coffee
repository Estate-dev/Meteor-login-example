Router.configure
  layoutTemplate: 'layout'

Router.onBeforeAction (pause) ->
  unless Meteor.userId()
    Router.go 'login'
  @next()

Router.route '/', ->
  @render 'Dashboard'

Router.route '/login', ->
  @layout 'LoginLayout'
  @render 'Login'
