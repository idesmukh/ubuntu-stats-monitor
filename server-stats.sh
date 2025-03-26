#!/bin/bash
#
# Display total CPU usage, total memory usage, total disk usage,
# top 5 processes by CPU usage, top 5 processes by memory usage.

while true; do
  clear
  # The awk tool fetches the 8th field from the line i.e. idle percentage.
  idle=$(top -b -n 1 | grep -- "%Cpu" | awk '{print $8}')
  usage=$(echo "100 - $idle" | bc)
  echo "CPU Usage: $usage%"
  sleep 1
done