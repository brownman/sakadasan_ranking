require 'rubygems'
require 'sinatra'
require 'haml'
require 'db/connection_establishment'

set :views, File.dirname(__FILE__) + '/app/views'

( Dir::glob("app/controllers/*.rb") ).each do |controller|
  load controller
end

( Dir::glob("app/models/*.rb") ).each do |model|
  require model
end

