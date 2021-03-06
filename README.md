# ng-reading-list: Reading List in AngularJS

Note: Original repo [here](https://github.com/codeschool/AngularReadinglist). I just stole the specification that follows. I'm using this example application to learn me some AngularJS.

## Installation

This project was generated using [Yeoman](http://yeoman.io)! To run the app, clone this repository and run the following:

1. `npm install` (go get a drink)
2. `bower install` (blow your nose)
3. `grunt serve`

You should now have a window open in your default browser pointing to `http://localhost:9000`. Changes that you make should automatically trigger a reload... Go ahead, try it!

## Specifications

### When I have read or want read a Book, I can add it to a Reading List so that I won't forget about it.

A Book should have:

* **title** - a text field
* **authors** - a list of names
* **ain** - the AIN from Amazon.com (optional)
* **review** - a few paragraphs of text
* **rating** - 1 to 5, like stars (or tomatoes)
* **genre** - a name like "fiction" or "non-fiction"

### I can view a list of all the Books on my Reading List so that I can see which ones I've added.

* For each Book, show:
    * the cover image (from Amazon.com)
    * rating (out of max)
    * the title
    * author byline
    * review text
    * genre(s)
* Link to Amazon.com:
    * the cover image
    * the title
* Display in the order they were added to the Reading List
* The URL for a book cover image from Amazon.com can be generated, given the AIN:
    http://images.amazon.com/images/P/{{book.ain}}.01.ZTZZZZZZ.jpg
* The URL for a book on Amazon.com can be generated, given the AIN:
    http://www.amazon.com/gp/product/{{book.ain}}

### I can edit a Book on my Reading List so that I can add or update the information about it.

* Essentially opens the "New Review" form for the existing Book

### I can mark a Book as "READ" or "READING" so that I can remind myself which ones I've already read.

Add **currently** to Book, a state indicator of "UNREAD", "READ" or "READING"

Reminders:

* Don't forget to update the "Edit Book" form!
* Maybe provide an easier way to update than editing it?

### I can sort the list of Books so that I can see which ones to read next.

The list of Books can be sorted by:

* date added e.g. oldest to newest
* alpha by title
* rating e.g. higest first, unrated first

### I can filter the list of Books

The list of Books can be _filtered_ by:

* state e.g. "only UNREAD" or "not READ yet"
* reviewed e.g. "review" is not empty
* "good reads" e.g. ratings greater than "3"

## TODO

- [ ] edit a book
- [X] delete a book
- [X] uuid service
- [ ] amazon service to generate URL
- [ ] display book image
