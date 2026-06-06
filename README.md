# Sysadmin Portfolio

A collection of Linux administration scripts built as part of my learning journey

---
 
## Scripts
 
### `backup.sh`
Requires root. Creates a timestamped compressed archive of the `/home` directory and saves it to `/backup`. Useful for quick local backups before system changes.
 
### `cleanup-logs.sh`
Compresses application log files older than 2 days and permanently deletes compressed logs older than 30 days. Keeps log directories manageable without losing recent history.
 
### `create_user.sh`
Requires root. Interactively prompts for a username and full name, checks the account doesn't already exist, creates it with a home directory, and sets the password before confirming.
 
### `deploy-app.sh`
Pulls the latest code from the main branch and restarts the application service. Exits immediately if the application directory isn't found, preventing deployment to the wrong location.
 
### `net-check.sh`
Runs a three-layer connectivity check: verifies internet access, tests whether the database port is reachable, and confirms the web endpoint returns a healthy response.
 
### `provision_users.sh`
Bulk-creates Linux user accounts from a colon-delimited `users.txt` file. Creates each account with a home directory and sets its password, confirming each one as it goes.
 
### `sync-to-dr.sh`
Mirrors data to an offsite backup server with bandwidth limiting. Keeps the destination in sync with the source, including propagating deletions.
 
### `sysinfo.sh`
Prints a system overview: hostname, OS, kernel version, CPU model, total memory, disk layout, and currently listening ports.
 
### `system_health.sh`
Reports disk usage, memory, and CPU load. Sends an email alert to the admin if the root partition exceeds 80% capacity.
 
### `user_permission.sh`
*(Description pending — share the script to get an accurate summary.)*
 
### `wrapper.sh`
Orchestration script with locking and logging. Prevents concurrent runs via a lock file, registers a cleanup trap on exit, and logs start and finish timestamps to a log file.
 
---