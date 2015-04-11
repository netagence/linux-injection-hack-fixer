#!/bin/bash
# Security tool for Plesk servers, developed by NetAgence - circa 2008.
# What was found: A client site on a Plesk server with all its index* files injected with compromised URLs, ex all index files in /var/www/vhosts/site.fr/httpdocs
#[STARTHACK]<script type="text/javascript" src="http://another_hacked_site.com/facebook.php">[ENDHACK]
# Goal: Detect which files contain the hack, then optionally backup and edit them.

### SCRIPT CONFIG STARTS HERE ###
# EDIT THIS CHAIN to contain a typical hack signature
HACKCHAIN='php"></script><?php'
### SCRIPT CONFIG ENDS HERE ###

DATETIME_MARKER=$(date '+%Y%m%d_%H%M%S')
LOGFILEPATHNAME="/home/hackfixing/hackfixing_$vhostdomaine_$DATETIME_MARKER.log"

clear;
echo "Plesk Hack Utilities Control Konsole Editor Distribution- Mobile Edition (PHUCKED ME)"
echo "Bash version ${BASH_VERSION}"

echo -e "Domain to scan ? \c "
read  vhostdomaine
      echo "Scanning of /var/www/vhosts/$vhostdomaine in progress..."
      cd /var/www/vhosts/$vhostdomaine
      
      echo ""
      echo "Scan : files that CONTAIN the hack chain reference ($HACKCHAIN) but also seem to contain something else, i.e. edit, do not delete ! :"
      find . -type f -exec grep -q $HACKCHAIN {} \; -exec echo {} \;


		      for hackedfile in $(find . -type f -exec grep -q $HACKCHAIN {} \; -exec echo {} \;) 
			do
			      echo "Hacked : $hackedfile"
			      #echo "Backing it up..."


			done | sort #End listing hacked files containing that chain

      echo "Done scanning vhost $vhostdomaine."

#End
 