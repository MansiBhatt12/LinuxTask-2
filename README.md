# LinuxTask-2- Linux Shell Script for MySQL Database Backup using Cron Job

# Problem Satement - Create a Linux shell script that performs the following tasks:
    1. Automatically detects the OS architecture like Ubuntu or RHEL and installs MySQL accordingly.
    2. Creates a database named "test" and a table within it, and inserts some information.
    3. Takes a backup of the "test" database.
    4. Creates a tar file of the backup and stores it in the **`/tmp`** directory.
    5. Also create a cron job to run backup scripts every day at 10 PM.

# Solution -
1. [Specify any prerequisites or dependencies needed for the task].
2. Clone the repository to your local machine.
3. Make sure to replace the password of root "-ptest" and the path "/home/varun/LinuxTask/script_name.sh" with the actual path to your backup script. Additionally, ensure that the script has the   necessary permissions to be executed "chmod +x filename".
4. Open a terminal or SSH into your Linux server.
5. Open the cron configuration file: sudo crontab -e
   If this is your first time setting up cron jobs, you might be prompted to select an editor. Choose your preferred editor (e.g., nano, vim) and proceed.
6. Add a new cron job entry with the desired schedule and command:
   To schedule a backup script to run every day at 10 PM, add the following line to your cron table:
   '''  0 22 * * * /bin/bash /home/varun/LinuxTask/script_name.sh  '''
   Adjust the schedule and command according to your requirements and path of directory.
7. Save the changes and exit the editor.
8. The cron job will now run automatically based on the specified schedule.
9. The backup script "script_name.sh" will now be executed and automatically detect the OS architecture either it is Ubuntu or RHEL, install MySQL, create the database, insert data, take a backup, and create a tar file in the /tmp directory every day at 10 PM according to the system's time.
