import { FlowRouter } from 'meteor/ostrio:flow-router-extra';


FlowRouter.route '/',
    action: -> @render 'layout','home'

FlowRouter.route '/login',
    action: -> @render 'layout','login'
    
FlowRouter.route '/register',
    action: -> @render 'layout','register'


FlowRouter.route '/me',
    action: -> @render 'layout','me'
    
FlowRouter.route '/settings',
    action: -> @render 'layout','settings'
FlowRouter.route '/users',
    action: -> @render 'layout','users'

FlowRouter.route '/d/:type',
    action: -> @render 'layout','type'

FlowRouter.route '/events',
    action: -> @render 'layout','events'

FlowRouter.route '/chat',
    action: -> @render 'layout','chat'


FlowRouter.route '/mail',
    action: -> @render 'layout','mail'
    
FlowRouter.route '/alerts',
    action: -> @render 'layout','alerts'

FlowRouter.route '/u/:username',
    action: -> @render 'layout','user'

 
FlowRouter.route '/edit/:doc_id',
    action: -> @render 'layout','edit'

 
FlowRouter.route '/view/:doc_id',
    action: -> @render 'layout','doc_page'

