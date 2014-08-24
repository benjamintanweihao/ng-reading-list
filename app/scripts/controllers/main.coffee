'use strict'

###*
 # @ngdoc function
 # @name ngReadingListApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the ngReadingListApp
###
angular.module('ngReadingListApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
