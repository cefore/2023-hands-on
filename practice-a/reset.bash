#!/bin/bash

wait_time=4

echo -n "Stopping the cefnetd "
sudo cefnetdstop;
echo -n ".";sleep 0.$wait_time;echo -n ".";sleep 0.$wait_time;echo "."
sudo cefnetdstop -F;

echo -n "Starting the cefnetd "
sudo cefnetdstart
echo -n ".";sleep 0.$wait_time;echo -n ".";sleep 0.$wait_time;echo "."

(cefstatus -v; cefstatus;)


