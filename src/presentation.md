# Preface

Let`s face a problem nobody cares:
How to distribute your software so people can install it?

* Presentation is done in jovial tone.
* Approaching the topic from a less technical view than usual.
* Poll: Who knows Virtualization, Sandboxing, Docker?
* Who had to package software already?

# Deployment

def.: process of distributing the software to one or more clients.

# Earlier

* This meant to install the software on the client`s hardware.
* Using our buildsystem.
* And it`s dependencies.
* Using their buildsystem.
* And fixing the bugs on the client`s platform (64bit -> 32 bit etc.)
* And to fix the bugs in the dependencies on the clients platform.
* And to pay the costs of the developer`s nervous breakdowns.

# A bit less earlier

* Hey, let`s use virtualization!
* Simulate the client`s hardware in a virtual machine (VirtualBox etc.)
* Test it in the VM, just copy the tested software over.
* Problem solved?
   * Nah.
* What if the client`s hardware changes?

# Today

* Hey, just let`s ship the VM!
* Works. 
* But feels like an awful hack.
* Deploying a 5GB+ VM image on every software update, seriously?

# Docker to the rescue

* One would need a way to package software into containers.
* But without all the redundant copies of operating systems underneath.
* Docker does this by providing a couple of base images, from which specialized
  images can be inherited.
* Base images are available for popular distribution like ubuntu, fedora, ...
  but you can create them yourself too.
* Docker images can be versioned, so if a new release comes out only the diff
  needs to be transmitted to the clients (usually only a few MB big).
* A process can be run in an image - that`s called an container.

# Words! Show us that thing!

<short presenation>

# Other usecases

* Deployment is one usecase.
* Testing is another one.
* Even if you do not distribute your software as docker container.

# Other usecases 2:

* Sandboxing applications
* Especially useful for application that may destroy the host filesystem.
* If they did so - just restart the container, everything fine again.
* Personal usecase: running a self-written duplicate finder on / 
* System still working?

# Extended docker features

- Linking containers together.

# Other usecases 3:

* Cluster management with CoreOS.
* No time to explain.
* Diagram with mutliple clusters. 

# So, docker is the new thing? 

It has its shortcomings still, for example it is currently only
possible to run linux based operating systems as container.
Microsoft announced that Windows support will follow. 