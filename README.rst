========================
scrapinghub-stack-portia
========================

Software stack used to run Portia spiders in Scrapinghub cloud.

Versioning
==========

Versioning is done in the following manner:

- latest version of the stack marked with `latest`
- each published version of the stack is marked with `<slybot version>-<release date>` tag
- for example, `0.13-20160427` refers to a stack released at day April 27th that
ships `slybot` python package `0.13`.

All stack versions are listed correspond to a Docker image listed at:

- https://hub.docker.com/r/scrapinghub/scrapinghub-stack-portia/tags/

Release procedure
=================

When you're going to release a new version of the stack, you should:

1. Do not forget to pull latest changes from master::

    git pull origin

2. Tag it with a correct tag string (see Versioning section above)::

    git tag <tag>

  Example::

    git tag -f 0.13
    git tag 0.13-20160727

3. Push the changes and the tags to the repo::

    git push -f origin master <tag1> <tag2> 

  Example::

    git push -f origin master 0.13 0.13-20160727

  Tags should be pushed when pushing changes (or before it) because otherwise build will not be triggered and developer will be required to find the build in drone and trigger it manually again after tags are pushed.

4. After release it's necessary to check that tag is updated both in github and hub.docker.com:

  - https://github.com/scrapinghub/scrapinghub-stack-portia/releases
  - https://hub.docker.com/r/scrapinghub/scrapinghub-stack-portia/tags/
