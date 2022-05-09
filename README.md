# Introduction

The SPLine (Software Pipe Line) project demonstrates setting up a software
development pipeline using combined virtual machine and container technologies.
Setup is automated using vagrant and ansible.

If you wish to add more nodes, you may add nodes change `Vagrantfile` and
adjust the ansible inventory file `hosts` accordingly.

## setup procedure

You need the following tools required by this project:

- [Virtualbox][1]
- [Vagrant][2]
- [vagrant-hostmanager][3]
- [Ansible][4]

You also need the Debian vagrant box managed by [this project][5].
Install these tools, and you clone this project.
This project contains sub module, so you need clone the project as follows:

    git clone --recurse-submodules https://github.com/schnell18/spline

Open a command line window, then nagivate to the root directory of this project.
And run the following commands:

    vagrant up


[1]: https://www.virtualbox.org/
[2]: https://www.vagrantup.com/
[3]: https://github.com/devopsgroup-io/vagrant-hostmanager
[4]: https://www.ansible.com/
[5]: https://github.com/schnell18/vmbot
