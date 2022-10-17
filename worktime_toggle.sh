#!/bin/bash

play_time () {
  echo "play_time"
  ln -f /etc/hosts_playtime /etc/hosts
  exit 0;
}
work_time () {
  echo "work_time"
  ln -f /etc/hosts_worktime /etc/hosts
  exit 0;
}

# Day of the week
DOW=$(date +%u)
# Get hour of the day
HOUR=$(date +%H)

# If is weekend (Saturday/Sunday)
[ $DOW -gt 5 ] && play_time
# Workday, after work hours (18.00-)
[ $HOUR -gt 17 ] && play_time 
# Workday, before work hours (-08.00)
[ $HOUR -lt 8 ] && play_time 

# Workday, during work hours (08.00-18.00)
work_time
