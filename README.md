jetty-buildpack
===========================

CloudFoundry V2 Buildpack plugin for Jetty 9.

[![Build Status](https://travis-ci.org/jmcc0nn3ll/jetty-buildpack.png)](https://travis-ci.org/jmcc0nn3ll/jetty-buildpack)

NOTE:
----------------

> This buildpack should work with the Cloudfoundry.com v2 configuration once it is live.

Jetty Version: 9.2.5.v20141112

Description
----------------

This buildpack is quite simple to use.

If you have modifications to make to the Jetty server that will be running, like perhaps configuring additional
static contexts, setting up a proxy servlet, adding items to the jetty.home/lib/ext directory, you can either adapt
the ruby scripting or place them under the appropriate location in the /resources directory of this buildpack and they
will be copied into the correct location.

The new CloudFoundry buildpacks seem to be very simple to use and straightforward to setup and customize.  However
*customize* seems to be a really key component so I am unsure how relevant this buildpack will be outside of serving as
root fork for customized jetty buildpack, or just a simple example of how to do one of your own for CloudFoundry.

Feel free to submit feedback via normal github channels and I'll accept pull requests on this should they come.  

For the time being I'll leave this buildpack under my personal github account and should there be interest expressed I am
more then happy to push it over to https://github.com/jetty-project down the road for proper contributions, etc.

TODO
----------------

- [ ] Look into pulling jetty.sh changes into jetty proper to remove extra file under resources
- [ ] Update to next jetty release to address tweak in java.rb to get port injected into jetty correctly

Acknowledgements
----------------

The Jetty buildpack was forked from the CloudFoundry Java buildpack.  I looked at the Virgo Buildpack that Glyn worked
on as a sanity check.

* http://github.com/cloudfoundry/cloudfoundry-buildpack-java
* http://github.com/glyn/virgo-buildpack

CloudFoundry buildpacks were modelled on Heroku buildpacks.
