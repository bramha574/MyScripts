# myBashScripts


Daily using bash scripts for references.
(Some scripts doesn't make any sense. But they are useful to have some hands on for beginners.)


As of now, 

we have

    monitorProcess.sh   -- To monitor the processes that are running.
    monitorDiskusage.sh -- To monitor the disk usage.
    createFiles         -- To create files for every 10 seconds. (Ctrl + C to stop the execution of the script.)
    deployWar.sh        -- To deploy war files on to apache tomcat server.

Accordingly you can set the cron jobs for these files.\


Following are the generic steps to setup the cronjob,

save the script and make them executable. Copy the script to /etc/cron.daily to run the scripts daily.

    $ cp <script file> /etc/cron.daily/
    $ chmod +x /etc/cron.daily/<script file>
    
write cron jobs as per your requirements. (you can refer from here http://askubuntu.com/questions/2368/how-do-i-set-up-a-cron-job  )

You can also refere from http://www.thegeekstuff.com/2011/07/cron-every-5-minutes/ to set cron jobs hourly, monthly etc.
