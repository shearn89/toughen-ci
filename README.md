# toughen-ci
CI Environment files for testing puppet-toughen.

## Tools ##

* [Vagrant](https://www.vagrantup.com/)
* [Inspec]
* [Kitchen]

Should be able to run a command locally/push a commit, and have various OS boxes spun up (starting with CentOS 6/7) and run the puppet modules against them.

## Plan ##

* Concourse-ci running in docker/container?
* Watch repo
* On change/interval:
  * Spin up VM with puppet installed (centos/7 vagrant image)
  * copy down repo
  * run `puppet apply` a certain number of times
  * if exit status is not stable, build fails.
  * run inspec tests?
  * teardown VM

This would allow me to run the tests across multiple VMs.

Could potentially deploy in the cloud? gcloud? 

    gcloud compute instances create centos-7

Concourse on [docker?](https://concourse.ci/docker-repository.html)
