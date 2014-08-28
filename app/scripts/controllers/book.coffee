'use strict'

app = angular.module 'ngReadingListApp'

class BookCtrl extends @BaseCtrl
  @register app
  @inject '$scope', 'localStorageService'

  initialize: ->
    @books = []
    @localStorageService.bind(@$scope, 'books', @books)
    @books = @localStorageService.get('books')

  submit: (book) ->
    @success = false
    @books.push book
    @success = true
    
