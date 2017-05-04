while read line
do
  aws ec2 authorize-security-group-ingress --group-name pingdom --protocol tcp --port 80 --cidr $line/32
done < "${1:-/dev/stdin}"
