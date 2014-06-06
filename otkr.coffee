request = require 'request'

module.exports = (robot) ->
  robot.hear /お疲れ様でした/i, (msg) ->
    msg.send "今日の作業をちゃんと push してくださいね。"
