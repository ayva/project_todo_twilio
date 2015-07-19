# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

bundle exec thin -R config.ru start -p $PORT -e $RACK_ENV
