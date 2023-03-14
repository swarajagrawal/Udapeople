#!/bin/bash
aws ec2 describe-instances \
--query 'Reservations[*].Instances[*].PublicIpAddress' \
--filters "Name=tag:project,Values=Udapeople" \
--region us-west-2 \
--output text >> inventory.txt