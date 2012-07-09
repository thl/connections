ExceptionNotification::Application.config.middleware.use ExceptionNotifier,
    :email_prefix => "[#{APP_NAME} Error] ",
    :sender_address => "#{APP_NAME} Application Error <do-not-respond@#{APP_DOMAIN}>",
    :exception_recipients => %w(hm5u@virginia.edu thl@collab.itc.virginia.edu)