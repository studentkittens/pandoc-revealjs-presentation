<style type="text/css">
    .reveal h1 { font-size: 2.0em; } 
</style>

# 

![](docker-logo.png)

# Welcome!


<p class="fragment" data-fragment-index="1"><b>Poll:</b> Who knows Virtualization/Sandboxing/Docker?</p>
<p class="fragment" data-fragment-index="2">Presentation is less technical than usual.</p>
<p class="fragment" data-fragment-index="3">Although might be a bit linux centered. <br /> 
<style>
    .reveal section img { background:none; border:none; box-shadow:none; }
</style>
<img class="no_img_border" src="fedora-logo.png" height="250" width="250"/>
<img class="no_img_border" src="tux.png" height="250" width="250"/>
<img class="no_img_border" src="arch-linux.png" height="250" width="250"/>
</p>

<aside class="notes">
    Presentation is done in jovial tone.
</aside>

# Terms

## Deployment

``Def:`` The process of distributing software to client machines.

## Sandboxing

``Def:`` Environment for application that provide limited resource access.

<aside class="notes">
    Before we actually start, there are some terms that need clarification.
</aside>

## Virtualization

`Def:` Emulation of hardware through software in order  to run a guest operating system on top of a host system.

# How Deployment was done around 1950

<aside class="notes">
    So, what happens if we're a company that has written some server side software,
    which needs to be installed on the client's hardware? Our software has many 
    dependencies, might rely on certain software versions of, for example, Apache.

    Certain dependencies might still have bugs.
</aside>

Software deployment meant...

* ...to install the software on the clients hardware.
* ...to use the software's buildsystem.
* ...and to install it's dependencies.
* ...using the dependencie's buildsystems.
* ...fixing possible bugs on the client's platform.
* ...fixing possible dependencies bugs. 
* ...paying treatment cost developer's burnout.

# A bit more recent

* Hey, lets use virtualization for testing!
* Simulate the clients environment in a virtual machine.
* Test it in the VM, just copy the tested software over.
* What if the clients environment changes?

# Try again

* Hey, just lets ship the Virtual Machine Image!
* Works. 
* But feels like an awful hack.
* Deploying a 5GB+ VM image on every software update.
* Seriously?

# Docker to the rescue

* Containers instead of Images.
* Deploying the ``diff`` instead of the whole container.
* Base images for many popular linux distributions.
* New base images can be uploaded to [DockerHub](https://hub.docker.com/).
* Docker is the application engine that is able to run containers.

# Features

* Very fast booting containers (same Kernel!)
* Containerized applications run sandboxed.
* Easy to pack own applications in containers.
* Support for creating own Images.
* Built-in versioning support.
* Divided in Daemon and Docker clients.
- Linking containers together.
* ...

# 

![http://shipyard-project.com](shipyard.png)

# Technical Stuff

* Focus on processes, not on virtualizing operating systems.
* One process per container.

## Docker builds on Linux features:

* **cgroups:** Grouping processes together.
* **namespaces:** Separate processes in own namespaces.
* **LXC:** Combines both to provide *Operating system-level virtualization.*
* **aufs:** Overlay file system.

# 

<img src="docker-containers.png" alt="Two containers"/>

# Demonstration

## Hello World

<section><pre><code class="bash">
$ docker images
$ docker run base/arch "echo hello augsburg!"
</code></pre></section>

## Entering a container

<section><pre><code class="bash">
$ uname -a
$ docker run -t -i base/arch /bin/bash
> uname -a
> rm -r /bin
</code></pre></section>

## Versioning

<section><pre><code class="bash">
$ docker diff
$ docker hub
</code></pre></section>

# Usecases

* Deployment.
* Sandboxing applications.
* Testbed for application developement.
<aside class="notes">
    Personal usecase: running a self-written duplicate finder on / 
    System still working? No? Just restart the container.
</aside>

* Cluster Management with ``CoreOS``.
* ...

# 

<img src="core-os.png" alt="Two containers"/>
<img src="core-os-logo.png" alt="Two containers"/>


# So, docker is the new thing? 

Depends on your usecase.

* Still can only run Linux based containers.
* But it can run them on Windows/MacOSX using lightweight virtualization.
  (``boot2docker``).
* Microsoft has plans to port Docker fully to Windows.
* And even to use Windows as Image.
* What about GUI applications?

# 

![](docker-value.png)

# Are there areas where virtualization is still needed?

Yes.

# References

``Docker on Wikipedia:`` 

[http://en.wikipedia.org/wiki/Docker_(software)]()

``docker.com:``

[https://docker.com]()

``coreos.com:``

[https://coreos.com]()



# Thank you for your attention

(*Hooray, school's out!*)
