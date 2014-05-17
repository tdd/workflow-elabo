var Application = {
  initialize: function() {
    var HomeView = require('views/home_view');
    var Router = require('lib/router');

    this.homeView = new HomeView();
    this.router = new Router();
    if ('function' === typeof Object.freeze)
      Object.freeze(this);
  }
};

module.exports = Application;
