# myBashScripts


Daily using bash scripts for references.


As of now, 

we have

    monitorProcess.sh   -- To monitor the processes that are running.
    monitorDiskusage.sh -- To monitor the disk usage.
    createFiles         -- To creatae files for every 10 seconds.

Accordingly you can set the cron jobs for these files.\


Foolowing are the generic steps to setup the cronjob,

save the script and make them executable. Copy the script to /etc/cron.daily

    $ cp <script file> /etc/cron.daily/
    $ chmod +x /etc/cron.daily/<script file>
    
write cron jobs as per your requirements. (you can refer from here http://askubuntu.com/questions/2368/how-do-i-set-up-a-cron-job  )

