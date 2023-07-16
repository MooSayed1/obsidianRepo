#!/bin/bash
# Function to start the GitHub auto-push script
start_obsidian_script() {
  cd /home/mohamed/Desktop/obsidianRepo/
  while true
  do
    git add .

    git commit -m "Updated"

    git push

    sleep 3600
  done &
}

# Function to stop the GitHub auto-push script
stop_obsidian_script() {
  # Get the process ID of the GitHub auto-push script
  script_pid=$(pgrep -f "automationGitHubPushV2.sh")

  # Kill the script process
  if [ -n "$script_pid" ]
  then
    kill "$script_pid"
  fi
}

# Start the GitHub auto-push script when Obsidian is opened
if pgrep obsidian > /dev/null
then
  start_obsidian_script
fi

# Stop the GitHub auto-push script when Obsidian is closed
trap stop_obsidian_script EXIT
