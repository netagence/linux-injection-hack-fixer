Linux-injection-hack-fixer 1.0
================

Overview
========

This script was developed to help us diagnose and fix Plesk Linux hosting servers that were compromised one way or another.
When the crap hits the fan (and in the wonderful world of hosting, it will), you'd better have efficient tools at hand to act fast.
That script will scan the hosted domains directories to locate (and log to a file) any file containing the suspicious chain, for later editing.

This is part of a series of anti-hacking tools we created for internal use, and that we then release under GPL licence so others can contribute and benefit.

Our Web agency homepage is at http://www.netagence.com/

Requirements
============

* This is a Bash script, so any Unix/Linux flavor will do - also works on OS X. Heck, probably even works on Windows through Cygwin. Like I'm gonna try.

Install
=======
Edit the line to set the hack fingerprint you're looking for (HACKCHAIN='')

Copy to a working dir such as /home/hackfix/

Make executable: chmod 755

Launch from command line: ./linux-injection-hack-fixer.sh

To Do
================
Change usual Plesk path to adapt to other servers
Set log dir as as constant in settings
Offer to create log dir if does not exist
Add option to have several chains searched
Add feature to directly remove the hack chain (such as a link injection) from the hacked files
Email report ?
Run as a cronjob
Misc stuff and other ideas.

Changelog
================

1.0
-----------

* Initial Commit
