# frozen_string_literal: true
require 'bundler/inline'

gemfile(true) do
  source 'https://rubygems.org'
  gem 'octokit'
end

require 'octokit'
client = Octokit::Client.new(:access_token => ENV['GH_API_ACCESS_TOKEN'])

client.create_issue('4geru/django-tutorial', 'mew', 'ok', {labels: 'hogehoge', milestone: 1, assignees: [ENV['USER']]})
