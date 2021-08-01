

FROM rhel8/python-39

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

