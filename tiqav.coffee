# Description:
#   Assign reviewer to github pull-request
#
# Dependencies:
#   request
#
# Commands:
#   hubot tiqav [keyword] - response image

request = require 'request'

module.exports = (robot) ->
  robot.respond /tiqav (.*)?/i, (msg) ->
    request "http://api.tiqav.com/search.json?q=#{encodeURIComponent msg.match[1]}", (err, res, body) ->
      img = msg.random JSON.parse body
      msg.send "http://img.tiqav.com/#{img.id}.#{img.ext}"
