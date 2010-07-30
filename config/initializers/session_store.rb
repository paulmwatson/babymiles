# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_babymiles_session',
  :secret      => 'f57cfa8e752cb24a2868b3075d8a22c2abecb8ae0ddde7e88abf81f781a640689bb78b8b45dac826946eb0a7d21345150a8418cc0b33875b1510fa0fbde9930b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
