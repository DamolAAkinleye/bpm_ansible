#!/bin/bash

echo create bpmadm user in Oracle
su -l oracle -c "sqlplus / as sysdba <<EOF
create user bpmadm identified by bpmadm;
grant connect, all privileges to bpmadm;
EOF
"
echo create amxadm user in Oracle
su -l oracle -c "sqlplus / as sysdba <<EOF
create user amxadm identified by amxadm;
grant connect, all privileges to amxadm;
EOF
"
