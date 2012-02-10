# Start Using Sky
Tutorial for using the Kynetx Sky API

## Requirements
You need the following:

 - Chrome Browser
 - Kynetx for Google Chrome (extension)
 - Developer account from http://apps.kynetx.com/apps
 - Kynetx Sky Event Console http://github.com/kynetx/sky_event_console

## Install the ruleset
Log in to your Kynetx developer account and create a new ruleset.
Replace the template with the ruleset from this project. Be sure to
keep the rulset ID from your ruleset.

## Subscribe to the ruleset
Inside appbuilder click on the 'Distribute' tab.
In the 'KBX' section click on the Listing URL.
Click the 'Install' button.
Change from V: Prod to V: Dev (click)
You now have a ruleset that will respond to your Sky API requests.

## Generate a token
For Sky you need a token (see http://docs.kynetx.com/docs/Sky_API)
Visit http://apps.kynetx.com (be sure to log in).
You should see your email address in the upper right corner.
Click it. You should now see your profile. The URL will look like this:

    apps.kynetx.com/users/NNNNNN

To get the token page just add '/tokens' to the end of that URL:

    apps.kynetx.com/users/NNNNNN/tokens

Enter 'my_token' for the token name, then click 'New Token'.

You now have a token you can use in the Sky Event Console.

## Install the Sky Event Console
Clone the Sky Event Console project.
Visit the Extensions page (under Tools) in Google Crome.
Turn on 'Developer mode'. You should see a 'Load unpacked extension...' button.
Click it. Browse to the 'application' folder in the Sky Event Console project.
Click 'OK'.

## Start raising events
Now fire up the Sky Event Console: Open a new window in Chrome, then go
to the 'Apps' page. Click on 'Kynetx Event Console'.

The sample ruleset responds to events in the 'alien' domain where the type
is 'detected'. Set your Sky Event domain to 'alien' and type to 'detected'.
Copy your token from `apps.kynetx.com/users/NNNNNN/tokens` to the 
'Kynetx User Token Field'. The Kynetx Event Engine should be 
'cs.kobj.net'.

Next you need to set the attribute for the aliens we have detected.
Click the green '+' button under Attributes.
Enter 'race' for the key and 'Klingon' for the value.
Now scroll down and click the 'Raise Event' button.
When you get the response it should include the directive name "shields up".

Next you detect some wookies. Go back up the the attributes and change it
from 'Klingon' to 'Wookie'. Click 'Raise Event' again. This time the 
directive is: 'let the wookie win'.

## Conclusion
With the Sky Event Console and your ruleset you can add other alien races
and add appropriate directives. The token you are using is linked to your
Kynetx account (Personal Event Network). Any entity variables you set can
be accessed using the Sky API. They are the same for the older 'Blue' API,
so your new events can interact with your existing rulesets.

Good Luck!

## License
Copyright (c) 2012 Randall Bohn.
Available for use under the Creative Commons "SA" license.

