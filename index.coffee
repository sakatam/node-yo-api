request = require "request"

class Yo
  constructor: (@token, opts = {}) ->
    throw "token must be set" unless @token?

    {@base} = opts
    @base or= "http://api.justyo.co"

  yoall: (link, cb) ->
    request.post "#{@base}/yoall/", form: { api_token: @token, link: link }, cb
    null

  yo: (username, link, cb) ->
    request.post "#{@base}/yo/", form: { username: username, api_token: @token, link: link}, cb
    null

  subscribers_count: (cb) ->
    request.get "#{@base}/subscribers_count/", qs: { api_token: @token }, cb
    null

module.exports = Yo
