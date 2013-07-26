Using Front-End Framework as a template for new sites
========================================

_ **IMPORTANT NOTICE:** do **NOT** run bundle install, migrate databases, or git pull until the following steps have been completed!_

1. Rename the folder to the name of your new app (note: github will replace _ with - so may as well use - in the name.)
2. In app/views/layouts/application.html.haml change the title tag.
3. Change name after @ in .rvmc file
4. Change db names in /config/database.yml
5. Create a new index page
6. Change the index page route
7. Remove app/views/guides/
8. Remove high_voltage gem
9.  Remove //= require guides from app/assets/javascripts/application.js
10. Delete app/assets/stylesheets/bootstrap_docs.css 
11. Delete app/assets/stylesheets/webstop_docs.css 
12. Remove  \*= require bootstrap_docs and \*= require webstop_docs from app/assets/stylesheets/application.css
13. Remove ALL of the git remotes
	1. $ git remote -v
	2. $ git remote rm name_of_remote
	3. repeat until all remotes are gone
14. 