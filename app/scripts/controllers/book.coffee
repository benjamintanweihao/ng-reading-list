'use strict'

angular.module('ngReadingListApp')
  .controller 'BookCtrl', ($scope) ->
    $scope.books = [
      { title: 'Book 1', author: 'Author 1', ain: 'asin', review: 'Review 1', rating: '1' }, 
      { title: 'Book 2', author: 'Author 2', ain: 'asin', review: 'Review 2', rating: '1' },
      { title: 'Book 3', author: 'Author 3', ain: 'asin', review: 'Review 3', rating: '1' },
    ]
    $scope.submit = (book) ->
      $scope.books.push(book)
      alert(book)
      
