Tinytest.add 'multi-transform - normal', (test) ->
  Posts = new Mongo.Collection null

  Posts.transform (doc) ->
    doc.transformed = true
    return doc

  Posts.insert name: 'test'
  post = Posts.findOne()

  test.isTrue post.transformed

Tinytest.add 'multi-transform - multi', (test) ->
  Posts = new Mongo.Collection null

  Posts.transform (doc) ->
    doc.transformed = true
    return doc

  Posts.transform (doc) ->
    doc.transformed2 = true
    return doc

  Posts.insert name: 'test'
  post = Posts.findOne()

  test.isTrue post.transformed
  test.isTrue post.transformed2

Tinytest.add 'multi-transform - existing', (test) ->
  Posts = new Mongo.Collection null

  Posts._transform = (doc) ->
    doc.transformedExisting = true
    return doc

  Posts.transform (doc) ->
    doc.transformed = true
    return doc

  Posts.insert name: 'test'
  post = Posts.findOne()

  test.isTrue post.transformedExisting
  test.isTrue post.transformed
