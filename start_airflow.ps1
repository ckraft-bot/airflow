# Navigate to your Airflow directory
Set-Location "C:\Users\Clair\Desktop\Sandbox"

# Activate the virtual environment
.\airflow-env\Scripts\Activate

# Start Airflow Webserver and Scheduler in the background
Start-Process "airflow" -ArgumentList "webserver --port 8080"
Start-Process "airflow" -ArgumentList "scheduler"

# Print message to confirm Airflow is running
Write-Host "Airflow is running! Access it at http://localhost:8080"
