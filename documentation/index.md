# Instabug Module

## Description

Instabug gives you instant bug reporting for mobile apps by allowing your users to draw on the screen and attach text feedback.

## Accessing the instabug Module

To access this module from JavaScript, you would do the following:

	var Instabug = require("com.instabug");

The Instabug variable is a reference to the Module object.	

## Reference

[Instabug SDK](http://instabug.com/sdk_integration)

## Usage

See [example/app.js](https://github.com/ludolphus/TInstabug/blob/master/example/app.js) for an example.

### Available methods

Please read [Instabug SDK](http://instabug.com/sdk_integration) for details on how to use these methods.

#### Show Feedback Form

	Instabug.showFeedbackForm();
	Instabug.showFeedbackFormWithScreenshot(boolean);
	Instabug.disableSDK();
	Instabug.enableSDK();

#### Set SDK Parameters

	Instabug setAppIntrospection(boolean);
	Instabug setUserDataString('');
	Instabug setShowScreenshot(boolean);
	Instabug setShowEmail(boolean);
	Instabug setEmail('');
	Instabug setEmailPlaceholder('');
	Instabug setCommentPlaceholder('');
	Instabug.setIphoneShakingThreshold(4);
	Instabug.setIpadShakingThreshold(4);
	Instabug attachFileAtLocation('');

#### Set Alerts parameters

	Instabug setEmailIsRequired(boolean);
	Instabug setEmailInvalidText('');
	Instabug setCommentIsRequired(boolean);
	Instabug setCommentInvalidText('');
	Instabug setShowStartAlert(boolean);
	Instabug setStartAlertText('');
	Instabug setCommentIsRequired(boolean);
	Instabug.setThankYouAlertText('Thank's for helping out!'');
	Instabug setAlertsTitle('');

#### Set Design Parameters

	Instabug.setColorTheme(Instabug.InstabugColorThemeGreen);

##### available themes

* InstabugColorThemeBlack
* InstabugColorThemeGrey
* InstabugColorThemeOrange
* InstabugColorThemeRed
* InstabugColorThemeNavy
* InstabugColorThemeGreen
* InstabugColorThemeCyan
* InstabugColorThemeBlue
* InstabugColorThemeFlatWhite
* InstabugColorThemeFlatGrey
* InstabugColorThemeFlatBlack
* InstabugColorThemeFlatBlue
* InstabugColorThemeFlatRed
* InstabugColorThemeFlatGreen

##### Make a custom theme

	Instabug.setButtonsColor('#ff8400');
	Instabug.setButtonsFontColor('#ffffff');
	Instabug.setHeaderColor('#2c3e50');
	Instabug.setHeaderFontColor('#ffffff');
	Instabug.setTextBackgroundColor('#f7f7f7');
	Instabug.setTextFontColor('#525353');

## Author

Steven van Loef

Twitter: [@ludolphus](https://twitter.com/ludolphus)

App.net [@ludolphus](https://app.net/ludolphus)
