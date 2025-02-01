#! /bin/bash

# Change directory (PowerShell: Set-Location → Bash: cd)
cd ~/airflow-env

# Activate Airflow virtual environment (PowerShell: .airflow-envScriptsActivate → Bash: source)
source airflow-env/bin/activate

# Start Airflow Scheduler (PowerShell: Start-Process → Bash: nohup)
nohup airflow scheduler > scheduler.log 2>&1 &

# Start Airflow Web Server
nohup airflow webserver --port 8080 > webserver.log 2>&1 &

echo "Airflow services started successfully!"
