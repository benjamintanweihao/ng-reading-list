'use strict'

app = angular.module 'ngReadingListApp'

app.factory 'uuid', -> 
    generate: ->
      now = (if typeof Date.now is "function" then Date.now() else new Date().getTime())
      uuid = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, (c) ->
        r = (now + Math.random() * 16) % 16 | 0
        now = Math.floor(now / 16)
        ((if c is "x" then r else (r & 0x7 | 0x8))).toString 16
      )
      uuid
