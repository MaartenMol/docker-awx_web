FROM ansible/awx_web:9.3.0

USER root

RUN /var/lib/awx/venv/ansible/bin/pip install pysocks
RUN /var/lib/awx/venv/awx/bin/pip install pysocks

RUN /var/lib/awx/venv/ansible/bin/pip install pypsrp
RUN /var/lib/awx/venv/awx/bin/pip install pypsrp
