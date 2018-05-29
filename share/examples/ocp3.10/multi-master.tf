#!/bin/bash

set -eu

source ${ACU_SHARE_DIR:?}/defaults.bash

cat <<EOF
provider "aws" {
  region = "$ACU_REGION"
}

resource "aws_instance" "master1" {
  ami = "$ACU_AMI_IMAGE_MASTER"
  associate_public_ip_address = true
  iam_instance_profile = "$ACU_IAM_INSTANCE_PROFILE_MASTER"
  instance_type = "$ACU_INSTANCE_TYPE"
  key_name = "$ACU_KEY_NAME"
  subnet_id = "$ACU_SUBNET_ID"
}

resource "aws_instance" "master2" {
  ami = "$ACU_AMI_IMAGE_MASTER"
  associate_public_ip_address = true
  iam_instance_profile = "$ACU_IAM_INSTANCE_PROFILE_MASTER"
  instance_type = "$ACU_INSTANCE_TYPE"
  key_name = "$ACU_KEY_NAME"
  subnet_id = "$ACU_SUBNET_ID"
}

resource "aws_instance" "master3" {
  ami = "$ACU_AMI_IMAGE_MASTER"
  associate_public_ip_address = true
  iam_instance_profile = "$ACU_IAM_INSTANCE_PROFILE_MASTER"
  instance_type = "$ACU_INSTANCE_TYPE"
  key_name = "$ACU_KEY_NAME"
  subnet_id = "$ACU_SUBNET_ID"
}

resource "aws_instance" "infra" {
  ami = "$ACU_AMI_IMAGE_INFRA"
  associate_public_ip_address = true
  iam_instance_profile = "$ACU_IAM_INSTANCE_PROFILE_INFRA"
  instance_type = "$ACU_INSTANCE_TYPE"
  key_name = "$ACU_KEY_NAME"
  subnet_id = "$ACU_SUBNET_ID"
}

resource "aws_instance" "node1" {
  ami = "$ACU_AMI_IMAGE_NODE"
  associate_public_ip_address = true
  iam_instance_profile = "$ACU_IAM_INSTANCE_PROFILE_NODE"
  instance_type = "$ACU_INSTANCE_TYPE"
  key_name = "$ACU_KEY_NAME"
  subnet_id = "$ACU_SUBNET_ID"
}

resource "aws_instance" "node2" {
  ami = "$ACU_AMI_IMAGE_NODE"
  associate_public_ip_address = true
  iam_instance_profile = "$ACU_IAM_INSTANCE_PROFILE_NODE"
  instance_type = "$ACU_INSTANCE_TYPE"
  key_name = "$ACU_KEY_NAME"
  subnet_id = "$ACU_SUBNET_ID"
}

resource "aws_instance" "node3" {
  ami = "$ACU_AMI_IMAGE_NODE"
  associate_public_ip_address = true
  iam_instance_profile = "$ACU_IAM_INSTANCE_PROFILE_NODE"
  instance_type = "$ACU_INSTANCE_TYPE"
  key_name = "$ACU_KEY_NAME"
  subnet_id = "$ACU_SUBNET_ID"
}
EOF