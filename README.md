OSX-Wiki-2-CSV
==============

Export OSX Server wiki pages to CSV

Recently our Organization has grown to immense size and we are starting to outgrow the 10.6 Wiki server that we use primarily for our intranet. I have been looking at the 10.7 wiki server however it is not much better, our intranet has been plagued with bouts of corruption and plist issues that have caused slow load times, and extreme data loss. Its pretty clear that we need to move to a more stable information storage media. We have looked at WordPress and Drupal for this functionality  however the biggest issue is getting the data from the Wiki Server into one of these installations. I noticed that both Drupal and WordPress have many plugins or modules that offer the ability to import content from CSV however getting a Wiki Server content set into CSV is not as easy as it sounds.

Usage
==============

Apply the propper permissions to the export folder first

chmod 700 -R /export

this should make the scripts executable. Once done you need to run the run.sh script with sudo. This will trigger the export. This is no where near perfect so I have opened up a GitHub repository for the changes that I have made, and the addition to the helper script that runs these recursively. This also exports content in user blogs as well.

The one challenge I am having is running the script that exports the page.html file content and keeping the encoding at utf-8 so that I don’t get any artifacts or odd characters.

Reference
==============
For more information on the scripts and the project check out

http://www.jonbrown.org/export-osx-wiki-server-to-csv/
