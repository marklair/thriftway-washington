Front-End Framework Style Guide
===============================

This app give tips on how to use the various frameworks used by Webstop. As such it has most of them installed and in use in examples.

This site uses the High Voltage plugin by Thoughtbot for serving static pages in a rails app. We have the folder /app/views/guides/ setup to serve static content (/config/initializers/high_voltage.rb).

Adding and Removing Files
-------------------------

To add or remove a page simply place the page or preferably folder containing the page in the guides folder.

The High Voltage plugin will handle routing URLs to the new file. For example lets say you added the following file: "/app/view/guides/awesome\_thing/examples.html.erb". You can get there with the following URL: [http://localhost:3000/guides/awesome\_thing/example](http://localhost:3000/guides/awesome_thing/example)
