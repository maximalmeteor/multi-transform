Package.describe({
  name: 'maximum:multi-transform',
  version: '1.0.0',
  summary: 'Meteor package that enables multiple transformations on collections',
  git: 'https://github.com/maximummeteor/multi-transform',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.1.0.2');
  api.use([
    'coffeescript',
    'mongo'
  ]);
  api.addFiles('multi-transform.coffee');
});

Package.onTest(function(api) {
  api.use([
    'tinytest',
    'coffeescript'
  ]);
  api.use('maximum:multi-transform');
  api.addFiles('multi-transform-tests.coffee');
});
