#!/bin/bash

# Define base directory and file store location for MLFlow
MLFLOW_DIR="/var/mlflow-server"
FILE_STORE="${MLFLOW_DIR}/artifacts"

# Check if base directory is present
# If not present, directory will be made
if [ ! -d "$MLFLOW_DIR" ]; then
    mkdir "$MLFLOW_DIR"
fi

# Launch the MLFlow server instance
# $PSGSQL_USER, $PGSQL_PASSWORD, and $PGSQL_DB values are specified in docker compose file
mlflow server --backend-store-uri postgresql://$PGSQL_USER:$PGSQL_PASSWORD@postgres:5432/$PGSQL_DB --default-artifact-root mlflow-artifacts:/ --artifacts-destination $FILE_STORE --serve-artifacts --host 0.0.0.0