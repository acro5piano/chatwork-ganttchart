require 'bundler/setup'
require 'backlog_kit'
require_relative 'config'

client = BacklogKit::Client.new(
  space_id: SPACE_ID,
  api_key: API_KEY
)

client.get_space.body # get body
client.get_space.headers # get headers
client.get_space.status # get status


