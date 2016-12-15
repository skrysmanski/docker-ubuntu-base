FROM ubuntu

# Make sure we get a colorful command prompt.
ENV TERM xterm-color

# Installing the 'apt-utils' package gets rid of the 'debconf: delaying package configuration, since apt-utils is not installed' 
# error message when installing any other package with the apt-get package manager. 
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apt-utils
