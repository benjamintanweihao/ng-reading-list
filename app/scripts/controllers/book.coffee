'use strict'

app = angular.module 'ngReadingListApp'

class BookCtrl extends @BaseCtrl
  @register app
  @inject '$scope', '$location', '$routeParams', 'localStorageService', 'uuid'

  initialize: ->
    @$scope.books = @localStorageService.get('books') || []
    @localStorageService.bind(@$scope, 'books', JSON.stringify(@$scope.books))

    book_id = @$routeParams.book_id
    if book_id?
      @$scope.book = (@$scope.books.filter (b) -> b.id == book_id)[0]

  submit: (book) ->
    book.id = @uuid.generate()
    @$scope.books.push book
    @$location.url("/books")

  update: (book) ->
    old_book = (@$scope.books.filter (b) -> b.id == book.id)[0]
    console.log "Old Book: " + old_book
    console.log "New Book: " + book
    indexOfOldBook = @$scope.books.indexOf(old_book)
    @$scope.books.splice(indexOfOldBook, 1)
    @$scope.books.push book
    @$location.url("/books")

  delete: (book) ->
    @$scope.books = @$scope.books.filter (b) -> b.id != book.id
