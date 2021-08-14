

FROM registry.access.redhat.com/ubi8/ubi-minimal

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

