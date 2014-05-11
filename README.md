Instabug module for Appcelerator
===========================================

Instabug gives you instant bug reporting for mobile apps by allowing your users to draw on the screen and attach text feedback.

For this module to work you need to create an account and setup your app at [https://instabug.com/](https://instabug.com/)

BUILD MODULE
--------------------

1. Run `build.py` which creates your distribution
2. cd to `~/Library/Application Support/Titanium`
3. copy this zip file into the folder of your Titanium SDK

REGISTER AND INSTALL THE MODULE
-------------------------------

Register your module with your application by editing `tiapp.xml` and adding your module.
Example:

```
<modules>
	<module version="1.6">com.instabug</module>
</modules>
```

Next add this to your tiapp.xml

```
    <ios>
        <plist>
            <dict>
                <key>InstabugAppKey</key>
                <string>YOUR_INSTABUG_APP_KEY</string>
                <key>InstabugFeedbackEvent</key>
                <string>2</string>
                <key>InstabugTrackLocation</key>
                <string>0</string>
            </dict>
        </plist>
    </ios>
```

For 'InstabugFeedbackEvent' choose one of the ways to allow the user to bring up Instabug:

	0 - InstabugFeedbackEventShake
	1 - InstabugFeedbackEventScreenshot
	2 - InstabugFeedbackEventThreeFingersSwipe
	3 - InstabugFeedbackEventNone
	4 - InstabugFeedbackEventFloatingButton

For 'InstabugTrackLocation' specify 0 (no location tracking) or 1 (location tracking).

Next copy /assest/Instabug.bundle to your project subfolder Resource/iphone


USING YOUR MODULE IN CODE
-------------------------

To use the Instabug module in code, all you will need to do is require it. 

```
var Instabug = require('com.instabug');
```

