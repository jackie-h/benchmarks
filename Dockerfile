

FROM registry.access.redhat.com/ubi8/ubi-minimal

RUN yum install @python39

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

