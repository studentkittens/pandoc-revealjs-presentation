<img style="float: right" width="150" height="150" src="hsa.png">

# 

![](docker-logo.png)

# Preface


<section>
    <p class="fragment" data-fragment-index="3">Less technical than usual.</p>
    <p class="fragment" data-fragment-index="1">Poll: Who knos Virtualization,
    Sandboxing or Docker?</p>
</section>

<aside class="notes">
    Presentation is done in jovial tone.
</aside>

# Definitions

## Deployment

``Def:`` The process of distributing software to client machines.

<aside class="notes">
    Oh hey, these are some notes. They'll be hidden in your presentation, but
    you can see them if you open the speaker notes window (hit 's' on your
    keyboard).
</aside>

# How is this done?

This meant...

* ...to install the software on the client`s hardware.
* ...to use the software's buildsystem.
* ...and to install it's dependencies.
* ...using the dependencie's buildsystems.
* ...fixing the bugs on the client's platform.
* ...fixing the dependencies bugs. 
* ...paying the developer's health cost for his nervous breakdowns.

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
* A process can be run in an image - thats called an container.

# Technical Stuff

TODO

# Words! Show us that thing!

```bash
$ docker images
$ docker run base/arch echo hello augsburg!
$ uname -a
$ docker run -t -i base/arch /bin/bash
> uname -a
> rm -r /bin
$ docker diff
```


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
