var instabug = require('com.instabug');
Ti.API.info("module is => " + instabug);

Instabug.setIphoneShakingThreshold(4);

Instabug.setThankYouAlertText("Thank's for helping out!");

// set the color theme for Instabug to Green
Instabug.setColorTheme(Instabug.InstabugColorThemeGreen);

// You can also set individual colors to create a custom theme matching your app
Instabug.setButtonsColor('#ff8400');
Instabug.setButtonsFontColor('#ffffff');
Instabug.setHeaderColor('#2c3e50');
Instabug.setHeaderFontColor('#ffffff');
Instabug.setTextBackgroundColor('#f7f7f7');
Instabug.setTextFontColor('#525353');
