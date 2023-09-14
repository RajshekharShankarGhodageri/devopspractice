#!/bin/bash

# Get current date and time
current_date_time=$(date +"%Y-%m-%d %H:%M:%S")

# Get memory usage
memory_usage=$(free -h | awk '/^Mem:/ {print $3 "/" $2}')

# Get system name
system_name=$(hostname)

# Get uptime
uptime_info=$(uptime -p)

# Print the gathered information
echo "Current Date and Time: $current_date_time"
echo "Memory Usage: $memory_usage"
echo "System Name: $system_name"
echo "Uptime: $uptime_info"
