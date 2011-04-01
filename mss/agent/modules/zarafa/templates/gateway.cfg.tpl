##############################################################
# GATEWAY SETTINGS

server_bind	=	0.0.0.0

# Please refer to the administrator manual or manpage why HTTP is used rather than the UNIX socket.
server_socket	=	http://localhost:236/zarafa

# drop privileges and run the process as this user
run_as_user = zarafa

# drop privileges and run the process as this group
run_as_group = zarafa

# create a pid file for stopping the service via the init.d scripts
pid_file = /var/run/zarafa-gateway.pid

# run server in this path (when not using the -F switch)
running_path = /

# enable/disable POP3, and POP3 listen port
pop3_enable	=	no
pop3_port	=	110

# enable/disable Secure POP3, and Secure POP3 listen port
pop3s_enable	=	no
pop3s_port	=	995

# enable/disable IMAP, and IMAP listen port
imap_enable	=	yes
imap_port	=	143

# enable/disable Secure IMAP, and Secure IMAP listen port
imaps_enable	=	yes
imaps_port	=	993

# Only mail folder for IMAP or all subfolders (calendar, contacts, tasks, etc. too)
imap_only_mailfolders	= yes

# Show Public folders for IMAP
imap_public_folders	= yes

# IMAP clients may use IDLE command
imap_capability_idle = yes

# Enable if you have problems reading mail (mostly happens in Mac Mail clients).
# However, this will make the gateway much slower.
imap_always_generate = no

# The maximum size of an email that can be uploaded to the gateway
imap_max_messagesize = 134217728

# File with RSA key for SSL
ssl_private_key_file	= /etc/mss/ssl/smtpd.key

#File with certificate for SSL
ssl_certificate_file	= /etc/mss/ssl/smtpd.pem

# Verify client certificate
ssl_verify_client	= no

# Client verify file and/or path
ssl_verify_file		=	
ssl_verify_path		=

# Process model, using pthreads (thread) or processes (fork)
process_model = fork

##############################################################
# GATEWAY LOG SETTINGS

# Logging method (syslog, file)
log_method	=	file

# Loglevel (0=no logging, 5=full logging)
log_level	=	2

# Logfile for log_method = file, use '-' for stderr
log_file	=	/var/log/zarafa/gateway.log

# Log timestamp - prefix each log line with timestamp in 'file' logging mode
log_timestamp	=	1
