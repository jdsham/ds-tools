FROM python:3.12

RUN apt-get update \
    && apt-get upgrade -y \
    && pip install mlflow \
    && pip install psycopg2

COPY ./mlflow/start_mlflow_server.sh /run/start_mlflow_server.sh

RUN chmod +x /run/start_mlflow_server.sh

ENTRYPOINT ["/run/start_mlflow_server.sh"]

CMD ["/bin/bash"]