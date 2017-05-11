FROM shearn89/toughen-centos

ADD Puppetfile ./
ADD site.pp ./
RUN r10k puppetfile install -v
RUN puppet apply -v --modulepath=./modules ./site.pp

