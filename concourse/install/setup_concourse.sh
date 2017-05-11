sudo apt update && sudo apt upgrade -y
wget https://github.com/concourse/concourse/releases/download/v2.7.4/concourse_linux_amd64
sudo mv concourse_linux_amd64 /usr/bin/concourse
sudo chmod +x /usr/bin/concourse
wget https://github.com/concourse/concourse/releases/download/v2.7.4/fly_linux_amd64
sudo mv fly_linux_amd64 /usr/bin/fly
sudo chmod +x /usr/bin/fly

mkdir -p keys
ssh-keygen -t rsa -f keys/tsa_host_key -N ''
ssh-keygen -t rsa -f keys/worker_key -N ''
ssh-keygen -t rsa -f keys/session_signing_key -N ''

cp keys/worker_key.pub keys/authorized_worker_keys

sudo mkdir /etc/concourse
sudo cp -r keys /etc/concourse/

sudo apt install -y postgresql nginx
sudo -u postgres createuser -s root
sudo -u postgres psql -c 'create database etc;'
sudo psql -d atc -c '\password concourse;'

sudo cp concourse-nginx.conf /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/ /etc/nginx/sites-enabled/

sudo cp run_concourse.sh /usr/bin/concourse-web
sudo cp concourse-web.service /etc/systemd/system/
sudo systemctl daemon-reload

