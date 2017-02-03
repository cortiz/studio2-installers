Crafter CMS
===========

Welcome to Crafter CMS!
Crafter is an award winning open source web content and experience management solution that allows organizations to build and manage rich online experiences on the web, mobile, social, and all digital online channels.

You can learn more about Crafter CMS here: http://docs.craftercms.org/en/stable/introduction/index.html

Crafter Engine
--------------
Today's content needs security and contextualization and personalization.  To pre-bake all the possibilities is impossible.  To rely on standard database style architectures is foolish.  Crafter Engine gives you the architecturally correct means to deliver personalized dynamic content at scale.

Crafter Engine is simple Spring MVC application optimized for high performance, distributed, personalized content delivery.   It's design is simple: Take raw assets from local stores, stir-fry them specifically for the requester and render/return the result in whatever format (HTML, JSON, VRML etc) the consumer requires.   Assets are stored on disk as XML, FTL templates, images etc.  On request they are loaded into memory and consumed from a LRU memory based cache.  

Simplicity, Availability and Performance:
Architecture is the key.  Crafter Engine is "Shared Nothing"  There is NO SHARED DATABASE. Every node has all of the content and it's own Solr based index to support sophisticated queries.  You can distribute nodes to data centers throughout the world, serve content locally and cover your HA/DR needs at the same time.

Crafter Engine is blazingly fast.  Unlike almost every other CMS on the planet, Crafter decoupled the delivery system from authoring and the repository and the made the delivery completely self sufficient components that generally speaking, work out of memory.


Supported Platforms / Pre-requisites
------------------------------------
Crafter CMS is Java and runs on almost all operating systems. You can find a list of supported platforms here:
http://docs.craftercms.org/en/stable/system-administrators/prod-environment/supported-platforms.html

To run this bundle you must have Java 1.7 or higher installed and JAVA_HOME configured.

Install / Starting the Application
----------------------------------
To install and configure Crafter Engine on your delivery node/server follow these isntructions:
http://docs.craftercms.org/en/stable/system-administrators/prod-environment/install-engine.html

To start Crafter Engine execute INSTALL_FOLDER\apache-tomcat\bin\startup.sh (or startup.bat) 
