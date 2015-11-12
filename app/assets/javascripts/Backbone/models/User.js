gramApp.models.user = Backbone.Model.extend({
  initialize: function(){
    console.log('hello world')
  },

  urlRoot: "/api/v1/users",

  removeUserFunc: function(){
    console.log("inside the UserModelDeleteFunc");
    this.destroy({
      success: function(){


      },
      error: function(model,response,options){
        console.log(xhr);
        console.log("In the error callback in the destroy method");
      }
    })
  }

})