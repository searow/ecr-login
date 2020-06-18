FROM alpine:3.12.0

RUN apk add --update curl \
                     py3-pip \
                     python3 \
                     build-base
# AWS CLI
RUN pip3 install awscli==1.18.82 --upgrade --user
ENV PATH="$PATH:/root/.local/bin:$PATH"

# kubect
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.11/bin/linux/amd64/kubectl && \
    chmod u+x kubectl && mv kubectl /usr/local/bin/kubectl
