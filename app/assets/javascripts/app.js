var gramApp = {models: {}, collections: {}, views: {}}
$(document).ready(function(){
  console.log('this is linked');
  gramApp.initialize();
});

gramApp.initialize = function(){
  var restaurantCollection = new gramApp.collections.restaurantCollection({});
  var restaurantCollectionView = new gramApp.views.restaurantCollectionView({
    collection: restaurantCollection
  });
}