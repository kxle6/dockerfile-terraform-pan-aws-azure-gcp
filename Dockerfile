FROM alpine:latest

WORKDIR /home

ENV TERRAFORM_VERSION=0.11.7

RUN apk add --update wget unzip git

RUN wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip

RUN unzip terraform_0.11.7_linux_amd64.zip -d /usr/local/bin/

RUN rm terraform_0.11.7_linux_amd64.zip

RUN cd /home 

RUN git clone https://github.com/PaloAltoNetworks/terraform-templates

RUN git clone https://github.com/PaloAltoNetworks/GCP-Terraform-Samples

RUN cd /home/terraform-templates/one-click-multi-cloud/one-click-aws && terraform init

RUN cd /home/terraform-templates/one-click-multi-cloud/one-click-azure && terraform init

RUN	cd /home/GCP-Terraform-Samples/Two-Tier/ && terraform init