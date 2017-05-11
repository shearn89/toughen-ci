# toughen-ci
CI Environment files for testing puppet-toughen.

## Tools ##

* [Vagrant](https://www.vagrantup.com/)
* [Inspec]
* [Kitchen]

Should be able to run a command locally/push a commit, and have various OS boxes spun up (starting with CentOS 6/7) and run the puppet modules against them.

## Usage ##

So far, there's a simple CI pipeline driven by [concourse](https://concourse.ci), however all it does is run `bundle exec rake test`, which is only of some use. Details of that in the `concourse` folder.

The juicy stuff is in the `vagrant` folder. Run `vagrant up` and it'll start a box, copy scripts, setup r10k, and then apply puppet. All you have to do is wait and it should all just work(tm).

## Plan ##

There was an older plan here, which is now scrapped. New plan!

* Something watches the `puppet-toughen` repo and also this repo.
* On either change, runs `vagrant up`, which automatically deploys a **specific** branch of the toughen repo.
* Sets build status to the exit code of `vagrant up` and then destroys the vagrant instance.
