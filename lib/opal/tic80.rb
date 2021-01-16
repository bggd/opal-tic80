# frozen_string_literal: true

if RUBY_ENGINE == 'opal'
  require_relative 'tic80/api'
else
  require 'opal'
  Opal.append_path File.expand_path('../..', __FILE__)
end
