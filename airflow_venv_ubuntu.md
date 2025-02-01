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

access airflow ui __http://localhost:8080/__
