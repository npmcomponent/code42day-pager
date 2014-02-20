*This repository is a mirror of the [component](http://component.io) module [code42day/pager](http://github.com/code42day/pager). It has been modified to work with NPM+Browserify. You can install it using the command `npm install npmcomponent/code42day-pager`. Please do not open issues or send pull requests against this repo. If you have issues with this repo, report it to [npmcomponent](https://github.com/airportyh/npmcomponent).*
# pager

  Simple pager optionally without numbers.
  Demo is [here](http://code42day.github.io/pager/)

## Installation

  Install with [component(1)](http://component.io):

    $ component install code42day/pager

## API

You need a DOM element with `.pager` class to create pager. See [example](example.html)

```js
var pager = require('pager');
var numeric = pager(document.querySelector('.numeric')).total(5).render();
```

The actual content displayed by pages is CSS driven. By default the page number is displayed but you
can style `.active` and `.incactive` class to display whatever you want: custom fonts, shapes,
colors etc.


### Pager(el)

Creates a pager as a child of `el`
Pager is not rendered until `render` is called

### render()

Render pager - needs to be called whenever number ot total pages changes.

### total(n)

Sets number of pages to be displayed. Pages are numbered from 0 to n-1.
You need ot call `render` to refresh the component it total changes.

### select(n)

Selects n-th page - n is 0-based

## Events

### show

`show` is generated whenver user clicks on a page, its parameter is a 0-based page number

## License

  MIT
