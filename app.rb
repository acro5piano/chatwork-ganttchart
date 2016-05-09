require 'bundler/setup'

require 'backlog_kit'

require 'pry'
require 'date'

require 'sinatra'
require 'sinatra/reloader'
require "sinatra/json"
require_relative 'config'

require 'haml'


get '/' do
    haml :index
end

get '/gantt' do
    # Return JSON for Gantt chart
    # See http://taitems.github.io/jQuery.Gantt

    client = BacklogKit::Client.new(
      space_id: SPACE_ID,
      api_key: API_KEY
    )
    response = []

    ISSUE_KEYS.each do |key|
        issue = client.get_issue(key)

        response.push ({
            name: key,
            values:[
                from: DateTime.parse(issue.body.start_date).strftime('%a %b %d %Y 00:00:00'),
                to: DateTime.parse(issue.body.due_date).strftime('%a %b %d %Y 00:00:00'),
                label: issue.body.summary,
                customClass: 'ganttRed',
            ],
        })
    end
    json response
end


