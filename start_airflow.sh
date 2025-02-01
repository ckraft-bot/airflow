#!/bin/bash
cd C:\Users\Clair\Desktop\Sandbox\airflow-env
source airflow-env/bin/activate
airflow webserver --port 8080 -D
airflow scheduler -D
echo "Airflow is running. Access it at http://localhost:8080"
