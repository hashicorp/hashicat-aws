#!/bin/bash
# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">

  <!-- BEGIN -->
  <center><img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}"></img></center>
  <center><h2>Meow World!</h2></center>
<<<<<<< HEAD
  Welcome to ${PREFIX}'s app. It's freaking Saturday morning.
=======
  Welcome to ${PREFIX}'s app. You Silly Person It is Saturday.
>>>>>>> c14f06f7673997f684e90866f3b3a5b7e0c94c08
  <!-- END -->

  </div>
  </body>
</html>
EOM

echo "Script complete."
