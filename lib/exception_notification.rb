ExceptionNotification::Application.config.middleware.use ExceptionNotifier,
    :email_prefix => "[#{APP_NAME} Error] ",
    #:sender_address => "#{APP_NAME} Application Error <do-not-respond@#{APP_DOMAIN}>",
    :sender_address => %Q("Application Error" <#{FATHOM_NO_REPLY_ADDRESS}>),
    :exception_recipients => %w(hm5u@virginia.edu thl@collab.itc.virginia.edu)