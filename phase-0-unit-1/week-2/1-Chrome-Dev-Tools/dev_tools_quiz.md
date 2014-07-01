#### Include an inline screenshot of your codeschool's points from the profile page:

<!-- Modify the Markdown to include your answers. Don't delete the questions! -->

##QUIZ
* Explain which tabs support the following actions and how.
  * Realtime editing of HTML and CSS ----- Elements Tab
  * Javascript Debugging ----- Sources Tab
  * Performance Optimization ----- Network Tab

* What's the quick key for your OS to spawn the Dev Tools inspector?
  Control + Shift + I

* Go to http://www.postmachina.com/ and analyze and tweak this nicely designed page.
  * What is the current background color for the page?  (Surprisingly, it's not just black!) -----#0b0f11
  * Tweak the background color to white.
  * Tweak the height of the side bar that contains the logo.  Shrink it down to 85px.
  * Roll over the navigation links.  When you hover over them, they dissapear.  Let's change the hover color to black instead.
  * Now take a screenshot of your new (and maybe not so improved) design.  It should match this screenshot: http://postimg.org/image/5ak1jkpl5/
  * Upload your own image to the imgs directory in the `1_Chrome_Dev_Tools` directory.  It should match the image above. The last nav link in the image above is black because the mouse was hovering there when the screenshot was taken. Do the same, and don't take a screenshot of your whole desktop, just the browser window. (This is part of the challenge.)

* For the postmachina website, why can't you tweak the color of the text "The most important things are not things"?  Please explain.
Not really sure for this question. My best guess would be that it's an image put onto the webpage by javascript. I can't confirm due to lack of knowledge with javascript.

* Go to www.ticketswizard.com and analyze the page.  
  * What is the largest image on the website? ----- lg-share-en.gif
  * Explain how you would find out this information, and list the URL of offending image here and how big it is. ----- By going into the network tab, I can then refresh the page and sort each element by size. This is the link to the offending image http://s7.addthis.com/static/btn/v2/lg-share-en.gif

* Test the www.ticketswizard.com website with google's [PageSpeed Insights](http://www.ticketswizard.com/).  (You can also download the chrome plugin).  What is the easiest thing to change to optimize the website?  How many kilobytes of data can be eliminated?
----- Inlining small stylesheets into the main HTML page can cut down round trip times and delays in downloading other resources.
-----I'm not sure how much could be elminated.