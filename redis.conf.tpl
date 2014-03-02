daemonize no
port 6379
logfile stdout
maxmemory {{ MAXMEMORY }}
maxmemory-policy {{ MAXMEMORY_POLICY | default("volatile-lru") }}
loglevel warning

