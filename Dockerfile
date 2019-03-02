FROM python:3.6

RUN apt-get update && \
  apt-get install -y \
    supervisor \
    nginx

RUN pip3 install flask gunicorn

COPY app.py /

# to check os of the release
# RUN cat /etc/*-release

# run command to make flask available on host machine
# CMD ["flask", "run", "--host", "0.0.0.0"]

# Setup supervisord
RUN mkdir -p /var/log/supervisor
COPY supervisor-app.conf /etc/supervisor/conf.d/supervisord.conf
COPY gunicorn-app.conf /etc/supervisor/conf.d/gunicorn.conf

# Start processes
CMD ["/usr/bin/supervisord"]
