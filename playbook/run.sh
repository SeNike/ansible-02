docker rm -f clickhouse-01
docker rm -f vector-01
docker run -d --name vector-01 centos:latest sleep infinity
docker run -d --name clickhouse-01 centos:7 sleep infinity
ansible-playbook -i inventory/prod.yml site.yml --diff -vvv