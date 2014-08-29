'use strict'

app = angular.module 'ngReadingListApp'

class BookCtrl extends @BaseCtrl
  @register app
  @inject '$scope', '$location', 'localStorageService', 'uuid'

  initialize: ->
    @$scope.books = @localStorageService.get('books') || []
    @localStorageService.bind(@$scope, 'books', JSON.stringify(@$scope.books))

  submit: (book) ->
    book.id = @uuid.generate()
    @$scope.books.push book
    @$location.url("/books")

  delete: (book) ->
    @$scope.books = @$scope.books.filter (b) -> b.id != book.id
