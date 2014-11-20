
# Distributed filemanagement with git-annex

![](logo.svg)

# Introduction 

## Status quo - cloud storage

* Today data should be always accessible, on different system
* Using a cloud service like 

    * Box.com
    * Megaupload
    * Dropbox
    * Google Drive 
    * ...

makes sense!

## Status quo - issues

* But is your data ,,safe"?
    * [Dropbox issue made password optional](http://www.netzwelt.de/news/149339-dropbox-fehler-loescht-dateien-dokumente-nutzern.html) for several hours
    * [Data loss](http://techcrunch.com/2011/06/20/dropbox-security-bug-made-passwords-optional-for-four-hours/) caused by a bug 

## Status quo - solution

* Solution?

    * Backup important data to different location
    * Encrypt sensible data if it is stored in the ,,cloud"
    * Track your data, verify your data

* Oh... it sounds hard... Yes, it is if you don't use the ,,right" tool!


# Git - A developers view!

Git is a version control system primary used by developers to track their code
changes. 

* Linus Torvalds calls it: A ,,stupid" content tracker.

* Problem:
    * Not suitable for big binary data


# Git-annex 

## Overview

Git-annex is a tool that extends the git concept by only tracking the content's
metadata. In this way it allows git to track large binary files without
checking them into git.

* A tool primary written by a developer for developers (usually commandline tool)
* But, now there is a fancy GUI which makes git-annex more user friendly

## Project specs

* Crowdfunding project written in Haskell by Joey Hess
* Free Software

# Repositories

* Usualy git remotes -> local, remote

# 
# Special remotes

Extends the git functionality by adding additional remotes which are not git
remotes.

* File content only
* REST API

    * S3
    * rsync
    * WebDAV
    * etc

# Encryption

Git-annex supports different encryption types:

* hybrid (recommended)
* shared
* picture
