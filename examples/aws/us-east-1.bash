set -a

: ${ACU_AMI_IMAGE_INFRA:=ami-0af8ebba55e71b379}
: ${ACU_AMI_IMAGE_MASTER:=ami-0af8ebba55e71b379}
: ${ACU_AMI_IMAGE_NODE:=ami-0af8ebba55e71b379}

: ${ACU_INSTANCE_TYPE:=m4.large}
: ${ACU_KEY_NAME:=libra}
: ${ACU_REGION:=us-east-1}
: ${ACU_SUBNET_ID:=subnet-cf57c596}

set +a