node-yo-api
===========

a freakin' simple node wrapper for yo api

usage
=====

install via npm:
```bash
npm i yo-api
```

in your code:
```coffee
Yo = require "yo-api"
yo = new Yo "your-yo-api-token"
yo.yo_all (err, res, body) ->
  # do whatever...
yo.yo_all_link (err, res, body) ->
  # do whatever with a link...
yo.yo "WORLDCUP", (err, res, body) ->
  # do something else...
yo.yo_link "WORLDCUP", (err, res, body) ->
  # do something else with a link...
yo.subscribers_count (err, res, body) ->
  # do something with count...
```

get involved
============

1. fork it ( https://github.com/sakatam/node-yo-api/fork )
2. create your feature branch (`git checkout -b my-new-feature`)
3. commit your changes (`git commit -am 'Add some feature'`)
4. push to the branch (`git push origin my-new-feature`)
5. create new pull request
