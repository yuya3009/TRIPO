Rails.application.configure do

  config.cache_classes = false

  config.eager_load = false

  config.consider_all_requests_local = true

  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :test
  host = '500c2c1a7afd49cdb4ba2a76d5ecf913.vfs.cloud9.us-east-2.amazonaws.com' 
  config.action_mailer.default_url_options = { host: host, protocol: 'https' }

  config.action_mailer.perform_caching = false

  config.active_support.deprecation = :log

  config.active_record.migration_error = :page_load
  
  config.web_console.whitelisted_ips = '114.185.45.91'

  config.assets.debug = true

  config.assets.quiet = true
  
  config.action_controller.allow_forgery_protection = false

  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
