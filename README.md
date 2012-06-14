Front-End Framework Style Guide
===============================

This app give tips on how to use the various frameworks used by Webstop. As such it has most of them installed and in use in examples.

This site uses the High Voltage plugin by Thoughtbot for serving static pages in a rails app. We have the folder /app/views/guides/ setup to serve static content (/config/initializers/high_voltage.rb).

Adding and Removing Files
-------------------------

To add or remove a page simply place the page or preferably folder containing the page in the guides folder.

The High Voltage plugin will handle routing URLs to the new file. For example lets say you added the following file: "/app/view/guides/awesome\_thing/examples.html.erb". You can get there with the following URL: [http://localhost:3000/guides/awesome\_thing/example](http://localhost:3000/guides/awesome_thing/example)

#Upgrade notes

##Twitter Bootstrap Docs

1. Remove everything up to and including the body tag from the begining of each html page. 
2. Remove everything starting with and including the body tag at the end of the page.
3. Place the styles from docs.css file into the guides.css.less file. 
4. Install the google/prettify javascript and css files in the vendor assets folder.
