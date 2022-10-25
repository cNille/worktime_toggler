# Worktime toggler

This script helps to decrease distractions during work hours by blocking certain
domains in the /etc/hosts.

You have to yourself customize the hosts-file you want to toggle between.
- hosts_worktime: Here you block domains that distract you
- hosts_playtime: Your normal hosts file during non working hours. 

## How it works

In the custom hosts files you can add domains to block. For example;
```
127.0.0.1       www.facebook.com
```

This will redirect all traffic to `www.facebook.com` back to your localhost. 
It won't lead anywhere as you might not have a local server being able to serve 
that request.

Once the `worktime_toggle.sh` script is setup to run every 15 minutes it'll make
sure that the correct host is being used. [The initial inspiration](https://unix.stackexchange.com/questions/41496/two-different-etc-hosts-depending-upon-the-time)
wouldn't work for me as it doesn't take into account if the computer is
shutdown or sleeping at that exact time when the crontab will run.


## Future features

A future feature would be to instead redirect to another hosts which helps you 
track how often you try to get distracted. And that shows you a webpage which 
insists you to keep working. Hard work work 🧑🏻‍💻

Another future feature would be to track which Wifi the computer is connected 
to. And to always have work-mode ON if it is a Wifi at the Office.

A third feature: Enable a way to temporarily de-activate a block for a domain. 
But log how often this happens for which webpages so that weekly summeries can
be shown.

## Installation
Run the `./init.sh` script to setup the initial setup and get instructions.


## Links that helped creating this script:
1. https://unix.stackexchange.com/questions/41496/two-different-etc-hosts-depending-upon-the-time 
2. https://apple.stackexchange.com/questions/38861/where-is-the-cron-log-file-in-macosx-lion
3. https://cron.help/#*/15_*_*_*_*
4. https://apple.stackexchange.com/questions/38861/where-is-the-cron-log-file-in-macosx-lion

