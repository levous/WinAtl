# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_winatl_session',
  :secret      => '8aac4accf1634b41234cb9d702574fee2803a0ace890c6ec18c9aa534bb8e24786feebcb9806755a6efb1a3df9a708c7b6d2c0f9a011c929961e83c75ed3ad14'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
