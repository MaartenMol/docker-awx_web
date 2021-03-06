FROM ansible/awx_web:9.3.0

USER root

RUN /var/lib/awx/venv/ansible/bin/pip install pysocks
RUN /var/lib/awx/venv/awx/bin/pip install pysocks

RUN /var/lib/awx/venv/ansible/bin/pip install pypsrp
RUN /var/lib/awx/venv/awx/bin/pip install pypsrp

RUN sed -i 's/margin: -50px 0px 0px -40px;/margin: 0px 0px 0px 0px;/g' /var/lib/awx/venv/awx/lib/python3.6/site-packages/awx/ui/static/css/app.58839a255ce638f3d026.css

RUN curl https://tower-mockups.testing.ansible.com/examples/images/branding/tower/tower-logo-header.svg > /var/lib/awx/venv/awx/lib/python3.6/site-packages/awx/ui/static/assets/logo-header.svg

RUN curl https://tower-mockups.testing.ansible.com/examples/images/branding/tower/tower-logo-login.svg > /var/lib/awx/venv/awx/lib/python3.6/site-packages/awx/ui/static/assets/logo-login.svg

RUN curl https://tower-mockups.testing.ansible.com/examples/images/branding/tower/favicon.ico > /var/lib/awx/venv/awx/lib/python3.6/site-packages/awx/ui/static/assets/favicon.ico
