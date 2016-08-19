cd $HOME/storage/Android/data/kvj.taskw/files/*
read -p "Choose username? " user;
read -p "Choose group? " group;
read -p "Choose userkey? " cred;
read -p "Choose server ip? " host;
cat >> .taskrc.android <<END
# Taskwarrior program configuration file.
# For more documentation, see http://taskwarrior.org or try 'man task', 'man task-color',
# 'man task-sync' or 'man taskrc'
confirmation=off
ciphers=SECURE256
android.sync.notification=success,ror
android.sync.periodical=60 android.sync.onchange=3 android.sync.onerror=10
taskd.certificate=$user.cert.pem
taskd.key=$user.key.pem
taskd.ca=ca.cert.pem
taskd.server=$host:53589
taskd.credentials=$group/$user/$cred
END
sftp server <<END
get -af mdata/taskd/pki/{ca.cert.pem,$user.cert.pem,$user.key.pem}
END
#task config taskd.certificate ~/.task/$user.cert.pem
#task config taskd.key ~/.task/$user.key.pem
#task config taskd.ca ~/.task/ca.cert.pem
#task config taskd.server $host:53589
#task config taskd.credentials $group/$user/$cred
