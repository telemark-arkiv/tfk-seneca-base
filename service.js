'use strict'

var Seneca = require('seneca')
var Mesh = require('seneca-mesh')
var envs = process.env
var options = {
  seneca: {
    tag: envs.TFK_SENECA_BASE_TAG || 'tfk-seneca-base'
  },
  mesh: {
    base: true
  }
}

Seneca(options.seneca)
  .use(Mesh, options.mesh)
