# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
FathomConnections::Application.initialize!

APPLICATION_DOMAIN = 'connections.thlib.org'
# Target e-mails for exception handling.
FATHOM_NO_REPLY_ADDRESS = 'admin@thlib.org'
FATHOM_CONTACT_ADDRESS = FATHOM_NO_REPLY_ADDRESS

