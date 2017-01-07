# LecturePoll
Polling for use in lectures

####This is work in progress

This is a client/server app, with the server running on NodeJS in the
`server` directory.

##Installation
You will need NodeJS, Pharo, and PharoJS.

Use npm to load the 3 Javascript packages needed in the server
directory.

##Running
In a Pharo Playground do:
    LpServerApp playground .
    LpClientApp playground .

Do the first line, pointing the folder at the `server` directory.

Then do the second line pointing the CSS and HTML at the corresponding
files in the `client` directory.

Using the person and cookie from the `init-all` file, the browser
should be able to connect to the server and get a list of courses.
