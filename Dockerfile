

FROM registry.access.redhat.com/ubi8/ubi

RUN yum -y install @python39

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

ADD benchmarks benchmarks