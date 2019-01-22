import { FlowRouter } from 'meteor/ostrio:flow-router-extra'

if Meteor.isClient
    Template.login.events
        'click .login': (e,t)->
            username = $('.username').val()
            password = $('.password').val()
            Meteor.loginWithPassword username, password, (err,res)=>
                if err 
                    alert err
                else
                    FlowRouter.go('/')
    
            
    Template.register.events
        'click .register': (e,t)->
            username = $('.username').val()
            password = $('.password').val()
            
            options = {
                username:username
                password
            }
                        
            Accounts.createUser options, (err,res)=>
                if err 
                    alert err
                else
                    FlowRouter.go('/')
                

    
    
    Template.login.helpers
        enter_class: -> if Meteor.loggingIn() then 'loading disabled' else ''
    Template.register.helpers
        enter_class: -> if Meteor.loggingIn() then 'loading disabled' else ''
        
        
if Meteor.isServer
    Meteor.methods
        find_username: (username)->
            res = Accounts.findUserByUsername(username)
            return res