# multi-transform [![Build Status](https://travis-ci.org/maximalmeteor/multi-transform.svg)](https://travis-ci.org/maximalmeteor/multi-transform)
Meteor package that enables multiple transformations on collections

## Installation

```
    meteor add maximal:multi-transform
```

## Usage

from now, use the `.transform()` function on your collections to apply transformations
````js
var Posts = new Mongo.Collection('posts');

Posts.transform(function(doc){
  doc.transformed = true;
  return doc;
});
````

If you use `.transform()`, your existing transform functions will also be called on transform (even if it's initialized with `_transform = fn` before)
