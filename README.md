# vg_demo

vagrant file learning exercise


NOTE1: I initially had a mismatch between vagrant host and the bentos box
guest plug-ins and had to 'sudo gem install vagrant-vbguest'
before 'vagrant up' to get vagrant to manage the guest plugins for me.

NOTE2: I've chosen a 192.168 public address, so during 'vagrant up' you may
need to interactively choose the interface on vagrant host to which 
the vm ip should be bridged.

	% vagrant up
	Bringing machine 'vgdemo' up with 'virtualbox' provider...
	==> vgdemo: Checking if box 'bento/centos-7.2' is up to date...
	==> vgdemo: Clearing any previously set network interfaces...
	==> vgdemo: Available bridged network interfaces:
	1) eno1
	2) docker0
	3) wlp2s0
	==> vgdemo: When choosing an interface, it is usually the one that is
	==> vgdemo: being used to connect to the internet.
	    vgdemo: Which interface should the network bridge to? 1
	==> vgdemo: Preparing network interfaces based on configuration...
	    vgdemo: Adapter 1: nat
	    vgdemo: Adapter 2: bridged
	==> vgdemo: Forwarding ports...
	    vgdemo: 80 (guest) => 8080 (host) (adapter 1)
	    vgdemo: 22 (guest) => 2222 (host) (adapter 1)
	...
