## System Monitoring Script
### Overview
This Bash script is designed to monitor system resources such as CPU usage, memory usage, and disk space. It gathers information using common command-line tools and generates an informative report on system health.

### Features
CPU Usage Monitoring: Displays the percentage of CPU usage for user processes, system processes, and idle time.
Memory Usage Monitoring: Shows the total, used, and free memory in megabytes.
Disk Space Usage Monitoring: Provides information on disk usage and available space for mounted filesystems.
### Prerequisites
This script is designed to run on Unix-like operating systems.
Ensure you have the following tools installed:
- top
- grep
- awk
- free
- df

### Usage
Clone the repository or download the script:
```
git clone https://github.com/RowanMohamed11/System-Monitoring-Script.git
cd system-monitoring-script
```
Make the script executable:
```
chmod +x system_monitor.sh
```
Run the script:
```
./system_monitor.sh
```
