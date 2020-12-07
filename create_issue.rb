# frozen_string_literal: true
require 'bundler/inline'

gemfile(true) do
  source 'https://rubygems.org'
  gem 'octokit'
end

require 'octokit'
client = Octokit::Client.new(:access_token => '91e4ab5eb11d0cc8991e5f5f89b860e229cfe0fe')

client.create_issue('4geru/django-tutorial', 'mew', 'ok', {labels: 'hogehoge', milestone: 1})