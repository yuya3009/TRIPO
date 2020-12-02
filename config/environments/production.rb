Rails.application.configure do

  config.cache_classes = true


  config.eager_load = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true


  config.read_encrypted_secrets = true
  
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  host = 'https://tricolor-point-2020.herokuapp.com'
  config.action_mailer.default_url_options = { host: host }
   ActionMailer::Base.smtp_settings = {
    :port           => ENV['587'],
    :address        => ENV['smtp.mailgun.org'],
    :user_name      => ENV['postmaster@sandboxf09a49ea3aa148d58d6b7212136a69f7.mailgun.org'],
    :password       => ENV['c587f16925e6f8994918729d9cade696-2af183ba-d28751ed'],
    :domain         => host,
    :authentication => :plain,
  }

  config.public_file_server.enabled = ENV['enabled'].present?

  config.assets.js_compressor = :uglifier
 
  config.assets.compile = false


  config.log_level = :debug

  config.log_tags = [ :request_id ]

  config.i18n.fallbacks = true

  config.active_support.deprecation = :notify

  
  config.log_formatter = ::Logger::Formatter.new


  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  config.active_record.dump_schema_after_migration = false
  
  config.force_ssl = true
end
