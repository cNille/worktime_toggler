sudo cp ./hosts_playtime /etc/hosts_playtime
sudo cp ./hosts_worktime /etc/hosts_worktime

echo "Run: "
echo "\tsudo crontab -e"

echo "And add the following line:"
echo "\t*/15 * * * * /PATH_TO_THIS_DIR/worktime_toggle.sh > /var/log/cron.worktime_toggler.log"
echo ""
echo ""
echo "It runs the worktime_toggle script every 15 minutes."
