Jenkins Subversion Plugin
=========================

[![Build Status](https://jenkins.ci.cloudbees.com/buildStatus/icon?job=plugins/subversion-plugin)](https://jenkins.ci.cloudbees.com/job/plugins/job/subversion-plugin/)

Provides Jenkins integration with [Apache Subversion](http://subversion.apache.org/).

See [Subversion Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Subversion+Plugin) on the Jenkins Wiki for more information.

Apache, Apache Subversion and Subversion are trademarks of the Apache Software Foundation.

##Docker container
The Dockerfile builds a Docker image for compiling the plugin in a container. This container can be reused for future compilations. The plugin requires a lot of Maven dependencies and takes a long time to build. If a container is used, the developer's local maven repo will not be effected. The developer could choose to delete the container after building the plugin. 

##Circleci
The circle.yml file is configured to build the plugin in the Docker container on Circleci. When the build is complete, the Docker container is archived as a tar file and the plugin is archived and ready to be deployed. 

