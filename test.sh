#!/bin/bash

Email="abdallaherikat11@gmail.com"
Subject="MySQL Alert"

send_email() {
    current_time=$(date +"%Y-%m-%d %H:%M:%S")
    message="There is a problem with MySQL at $current_time."
    echo "$message" | mail -s "$Subject" "$Email"
}

while true; do 
    if ! systemctl is-active --quiet mysql; then
        echo "The system is not working"
        send_email
    fi
    sleep 30
done
