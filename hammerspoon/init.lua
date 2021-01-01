config = {}
config.applications = {
  ['com.apple.finder'] = {
    bundleID = 'com.apple.finder',
    hyper_key = 'f'
  },
  ['com.apple.safari'] = {
    bundleID = 'com.apple.safari',
    hyper_key = 's'
  },
  ['com.culturedcode.ThingsMac'] = {
    bundleID = 'com.culturedcode.ThingsMac',
    hyper_key = 'd'
  },
  ['com.apple.iCal'] = {
    bundleID = 'com.apple.iCal',
    hyper_key = 'c'
  },
  ['com.apple.notes'] = {
    bundleID = 'com.apple.notes',
    hyper_key = 'n'
  },
  ['com.googlecode.iterm2'] = {
    bundleID = 'com.googlecode.iterm2',
    hyper_key = 't'
  },
  ['md.obsidian'] = {
    bundleID = 'md.obsidian',
    hyper_key = 'o'
  },
  ['com.microsoft.VSCode'] = {
    bundleID = 'com.microsoft.VSCode',
    hyper_key = 'e'
  },
  ['com.spotify.client'] = {
    bundleID = 'com.spotify.client',
    hyper_key = 'm'
  },
  ['com.apple.Music'] = {
    bundleID = 'com.apple.Music',
    hyper_key = 'i'
  },
  ['com.apple.mail'] = {
    bundleID = 'com.apple.mail',
    hyper_key = 'g'
  }
}

hyper = require('hyper')
hyper.start(config)
