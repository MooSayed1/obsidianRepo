#!/bin/bash

# Change to the local directory where the Git repository is located
cd /home/mohamed/Desktop/obsidianRepo/

# Loop forever
while true
do
  # Add all changes to the Git index
  git add .

  # Commit the changes with the message "Updated"
  git commit -m "Updated"

  # Push the changes to the remote repository
  git push

  # Wait for one hour before running the loop again
  sleep 3600
done
