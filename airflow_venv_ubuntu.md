# Setting up airflow venv
## Step 1: Update System Packages
```sudo apt update && sudo apt upgrade -y```

## Step 2: install deps
```sudo apt install -y python3-pip python3-venv libmysqlclient-dev libpq-dev```

## Step 3: create a virtual env
```python3 -m venv airflow_venv source airflow_venv/bin/activate```

## Step 4: install apche airflow
```pip install apache-airflow```

## Step 5: initialize airflow
```export AIRFLOW_HOME=~/airflow airflow db init```


## Step 6: create an admin user on airflow
```airflow users create --username admin --firstname Claire --lastname Kraft --role Admin --email c.kraft.9306@gmail.com```

## Step 7: Start airflow services - webserver and scheduler
```airflow webserver --port 8080 & airflow scheduler &```

_Explanation:_
- ```airflow webserver --port 8080 &```: Starts the Airflow webserver on port 8080 in the background. This allows you to access the Airflow UI at http://localhost:8080/.
- ```airflow scheduler &```: Starts the Airflow scheduler in the background, which is responsible for running tasks according to the schedule.

_Important Notes:_
- The ```&```at the end of each command tells the shell to run these commands in the background so you can continue using the terminal for other tasks.
If you close the terminal or session, these processes will be stopped unless you have configured them to run as system services (e.g., using systemd).

access airflow ui __http://localhost:8080/__

# Returning to airflow venv
## To reactivate venv
```source ~/airflow_venv/bin/activate```

## Start airflow services - webserver and scheduler
```airflow webserver --port 8080 & airflow scheduler &```
