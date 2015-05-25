Mongo.Collection::transform = (fn) ->
  @_tranformations = [] unless @_tranformations?
  if @_transform? and @_transform.multiTransform isnt true
    @_tranformations.push @_transform
  @_tranformations.push fn if fn?

  multiTransform = (doc) =>
    for transform in @_tranformations
      doc = transform(doc)
    return doc
  multiTransform.multiTransform = true

  @_transform = multiTransform
