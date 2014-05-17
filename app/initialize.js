var application = require('application');

$(function() {
  moment.lang('fr');
  application.initialize();
  Backbone.history.start();
});
