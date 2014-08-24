'use strict'

###*
 # @ngdoc function
 # @name ngReadingListApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the ngReadingListApp
###
angular.module('ngReadingListApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
