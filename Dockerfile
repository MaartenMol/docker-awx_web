FROM ansible/awx_web:9.3.0

USER root

RUN /var/lib/awx/venv/ansible/bin/pip install pysocks
RUN /var/lib/awx/venv/awx/bin/pip install pysocks

RUN /var/lib/awx/venv/ansible/bin/pip install pypsrp
RUN /var/lib/awx/venv/awx/bin/pip install pypsrp

RUN curl https://img.maartenmol.nl/test.svg > /var/lib/awx/public/static/assets/logo-login.svg
RUN curl https://img.maartenmol.nl/test.svg > /var/lib/awx/public/static/assets/logo-header.svg
RUN curl https://img.maartenmol.nl/favicon.ico > /var/lib/awx/public/static/assets/favicon.ico
