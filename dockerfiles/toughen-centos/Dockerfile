FROM centos:7

RUN rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
RUN yum install -y puppet ruby rubygems git 
RUN gem install --no-document r10k
