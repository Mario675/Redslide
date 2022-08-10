#!/bin/bash
zenity --scale --print-partial | xargs -n1 sh -c 'bc <<< "low1=0;high1=100;low2=1500;high2=6500; low2 + ($@ - low1) * (high2 - low2) / (high1 - low1)"' dummytext | xargs -n1 redshift -P -O >/dev/null 2>&1 
