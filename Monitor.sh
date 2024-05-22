#! /bin/bash
# Function to get CPU usage
get_cpu_usage()
{
        echo "CPU usage: "
        # Using top command to get the CPU usage, filtering the line with "Cpu(s)" and extracting the usage percentage
        top -b -n1 | grep "Cpu(s)" | awk '{print "User: "$2"%, System: "$4"%, Idle: "$8" %"}'
        echo
}
# Function to get memory usage
get_memory_usage()
{
        echo "Memory Usage:"
        # Using free command to get the memory usage and formatting the output
        free -m | awk  'NR==2{printf "Total: "$2"MB, Used: "$3"MB, Free: "$4"MB\n"}'
        echo
}

# Function to get disk space usage
get_disk_usage() {
        echo "Disk Space Usage:"
        # Using df command to get the disk usage and filtering the relevant lines
        df -h | grep '^/dev' | awk '{print " "$1" : "$5" used, "$4" available"}'
}

# Function to generate system health report
generate_report() {
  echo "Generating system health report..."
  echo "=============================="
  get_cpu_usage
  get_memory_usage
  get_disk_usage
  echo "=============================="
  echo "Report generated at: $(date)"
}
# Call the function to generate the report
generate_report
                                                                                 
