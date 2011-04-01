##############################################################
# DAGENT SETTINGS

# connection to the zarafa server
server_socket	=	file:///var/run/zarafa

##############################################################
# DAGENT SSL LOGIN SETTINGS
# 
# Note: server_socket must be set to https://servername:portname/zarafa
#       to use this type of login method

# Login to the Zarafa server using this SSL Key
sslkey_file = /etc/zarafa/ssl/dagent.pem

# The password of the SSL Key
sslkey_pass = replace-with-dagent-cert-password

##############################################################
# DAGENT LOG SETTINGS

# Logging method (syslog, file)
log_method	=	file

# Loglevel (0=no logging, 5=full logging)
log_level	=	2

# Logfile for log_method = file, use '-' for stderr
log_file = /var/log/zarafa/dagent.log

# Log timestamp - prefix each log line with timestamp in 'file' logging mode
log_timestamp	=	0

##############################################################
# DAGENT LMTP SETTINGS
#  start dagent with -d to create an lmtp daemon of the zarafa-dagent

# binding address for LMTP daemon
# change to 0.0.0.0 if you require connections over the network
server_bind = 127.0.0.1

# LMTP port to listen on for LMTP connections
lmtp_port = 2003

# Maximum LMTP threads that ca be running simultaneously
# This is also limited by your SMTP server. (20 is the postfix default concurrency limit)
lmtp_max_threads = 20

# Process model for LMTP daemon, using pthreads (thread) or processes (fork)
process_model = fork

# run as specific user in LMTP mode.
#   make sure this user is listed in local_admin_users in your zarafa server config
#   or use SSL connections with certificates to login
run_as_user = zarafa

# run as specific group in LMTP mode.
run_as_group = zarafa

# control pid file
pid_file = /var/run/zarafa-dagent.pid

# The following e-mail header will mark the mail as spam, so the mail
# is placed in the Junk Mail folder, and not the Inbox.
# The name is case insensitive.
# set to empty to not use this detection scheme.
spam_header_name = X-Spam-Status

# If the above header is found, and contains the following value
# the mail will be considered as spam.
# Notes: 
#  - The value is case insensitive.
#  - Leading and trailing spaces are stripped.
#  - The word 'bayes' also contains the word 'yes'.
spam_header_value = Yes,
