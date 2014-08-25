'use strict'

###*
 # @ngdoc overview
 # @name ngReadingListApp
 # @description
 # # ngReadingListApp
 #
 # Main module of the application.
###
angular
  .module('ngReadingListApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/books',
        templateUrl: 'views/books/index.html'
        controller: 'BookCtrl'
      .when '/books/new',
        templateUrl: 'views/books/new.html'
        controller: 'BookCtrl'
      .otherwise
        redirectTo: '/'
        templateUrl: 'views/index.html'

