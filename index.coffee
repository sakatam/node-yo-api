request = require "request"

class Yo
  constructor: (@token, opts = {}) ->
    throw "token must be set" unless @token?

    {@base} = opts
    @base or= "http://api.justyo.co"

  yo_all: (cb) ->
    request.post "#{@base}/yoall/", form: { api_token: @token }, cb
    null

  yo_all_link: (link, cb) ->
    request.post "#{@base}/yoall/", form: { api_token: @token, link: link }, cb
    null

  yo: (username, cb) ->
    request.post "#{@base}/yo/", form: { username: username, api_token: @token}, cb
    null

  yo_link: (username, link, cb) ->
    request.post "#{@base}/yo/", form: { username: username, api_token: @token, link: link}, cb
    null

  yo_location: (username, lat, long, cb) ->
    request.post "#{@base}/yo/", form: { username: username, api_token: @token, location: "#{lat},#{long}"}, cb
    null

  subscribers_count: (cb) ->
    request.get "#{@base}/subscribers_count/", qs: { api_token: @token }, cb
    null

module.exports = Yo
