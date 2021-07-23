ts=$(date +"%F-%H%M")
echo "Current Timestamp: ${ts}"
speedtest >> results_$ts.txt
