set -a

: ${ACU_CLUSTER_NAME:=$(basename ${ACU_CLUSTER_DIR:?})}

: ${AWS_ACCESS_KEY:?}		# ensure these are set
: ${AWS_SECRET_KEY:?}		# ensure these are set

: ${ACU_AMI_IMAGE_INFRA:=ami-0af8ebba55e71b379}
: ${ACU_AMI_IMAGE_MASTER:=ami-0af8ebba55e71b379}
: ${ACU_AMI_IMAGE_NODE:=ami-0af8ebba55e71b379}

: ${ACU_IAM_INSTANCE_PROFILE_INFRA:=""}
: ${ACU_IAM_INSTANCE_PROFILE_MASTER:=""}
: ${ACU_IAM_INSTANCE_PROFILE_NODE:=""}

: ${ACU_INSTANCE_TYPE:=m4.large}
: ${ACU_KEY_NAME:=libra}
: ${ACU_REGION:=us-east-1}
: ${ACU_SUBNET_ID:=subnet-cf57c596}

set +a