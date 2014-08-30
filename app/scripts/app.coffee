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
    'ngTouch',
    'LocalStorageModule'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/books',
        templateUrl: 'views/books/index.html'
        controller: 'BookCtrl'
      .when '/books/new',
        templateUrl: 'views/books/new.html'
        controller: 'BookCtrl'
      .when '/books/:book_id/edit',
        templateUrl: 'views/books/edit.html'
        controller: 'BookCtrl'
      .otherwise
        redirectTo: '/'
        templateUrl: 'views/index.html'

