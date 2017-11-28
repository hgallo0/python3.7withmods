FROM python:3.7.0a2

RUN pip install --upgrade 
    boto3 && \
    adduser -D -u 1000 jenkins 

USER jenkins
RUN mkdir ~/.aws && \
    chmod 700 ~/.aws
