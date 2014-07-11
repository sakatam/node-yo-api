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
yo.yoall (err, res, body) ->
  # do whatever..
yo.yo "WORLDCUP", (err, res, body) ->
  # do something else..
yo.subscribers_count (err, res, body) ->
  # count will be in body
```

get involved
============

1. fork it ( https://github.com/sakatam/node-yo-api/fork )
2. create your feature branch (`git checkout -b my-new-feature`)
3. commit your changes (`git commit -am 'Add some feature'`)
4. push to the branch (`git push origin my-new-feature`)
5. create new pull request
