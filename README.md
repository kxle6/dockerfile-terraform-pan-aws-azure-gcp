This is a minimal container image that will install wget, unzip, git and terraform.

This image will also download the latest terraform templates from the PaloAltoNetworks GitHub for AWS, Azure and GCP, as well as perform a 'terraform init' to download the latest Terraform plugins.

To run this container image, see example commands below:

docker container run -it kyleatpanw/terraform_pan_aws_azure_gcp:v1

To run and delete the container when you're done, use the following command as an example:

docker container run -it --rm kyleatpanw/terraform_pan_aws_azure_gcp:v1

To run and copy your working directory to the container, and delete the container when you're done, use the example:

docker run -it --rm -v $(pwd):/home/ -w /home/ kyleatpanw/terraform_pan_aws_azure_gcp:v1

To run and copy a folder or directory to the container, and delete the container when you're done, use the example:

docker run -it --rm -v /Users/blahblah/terraform-templates:/home -w /home kyleatpanw/terraform_pan_aws_azure_gcp:v1

When you are done using the container, use the command below:

exit

After exiting the container, if you want to reuse the the same container, use the following command:

docker container start -ai (name or container ID)
