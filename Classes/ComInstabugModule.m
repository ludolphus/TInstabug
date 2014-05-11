/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "ComInstabugModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import <Instabug/Instabug.h>

@implementation ComInstabugModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"acddb7a8-9339-450d-8024-82bb86395dd0";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"com.instabug";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];

	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}

+(void)loadInstabug
{
	ENSURE_UI_THREAD_0_ARGS
	NSDictionary *settings = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"]];

	// use InstabugFeedbackEventShake for shake event to initiate Instabug
	// use InstabugFeedbackEventThreeFingersSwipe for 3 finger swipe event to initiate Instabug
	[Instabug KickOffWithToken:[settings objectForKey:@"InstabugAppKey"] CaptureSource:InstabugCaptureSourceUIKit FeedbackEvent:[[settings objectForKey:@"InstabugFeedbackEvent"] integerValue] IsTrackingLocation: [[settings objectForKey:@"InstabugTrackLocation"] integerValue] == 1 ? YES : NO];
}

+(void)load
{
	[self performSelectorDuringRunLoopStart:@selector(loadInstabug)];
}

#pragma mark Cleanup 

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications


#pragma Public APIs

// Show Feedback Form

-(void)showFeedbackForm
{
	[Instabug ShowFeedbackForm];
}

-(void)showFeedbackFormWithScreenshot:(id)value
{
	ENSURE_ARG_COUNT(value, 1);
	[Instabug ShowFeedbackFormWithScreenshot:(BOOL)[TiUtils boolValue:value]];
}

-(void)disableSDK
{
	[Instabug disableSDK];
}

-(void)enableSDK
{
	[Instabug enableSDK];
}

// Set SDK Parameters

-(void)setAppIntrospection:(id)value
{
	ENSURE_ARG_COUNT(value, 1);
	[Instabug setAppIntrospection:(BOOL) [TiUtils boolValue:value]];
}

-(void)setUserDataString:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setUserDataString:(NSString*) [TiUtils stringValue:value]];
}

-(void)setShowScreenshot:(id)value
{
	ENSURE_ARG_COUNT(value, 1);
	[Instabug setShowScreenshot:(BOOL) [TiUtils boolValue:value]];
}

-(void)setShowEmail:(id)value
{
	ENSURE_ARG_COUNT(value, 1);
	[Instabug setShowEmail:(BOOL) [TiUtils boolValue:value]];
}

-(void)setEmail:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setEmail:(NSString*) [TiUtils stringValue:value]];
}

-(void)setEmailPlaceholder:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setEmailPlaceholder:(NSString*) [TiUtils stringValue:value]];
}

-(void)setCommentPlaceholder:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setCommentPlaceholder:(NSString*) [TiUtils stringValue:value]];
}

-(void)setIphoneShakingThreshold:(id)value
{
	ENSURE_ARG_COUNT(value, 1);
	[Instabug setiPhoneShakingThreshold:(double) [TiUtils floatValue:value]];
}

-(void)setiPadShakingThreshold:(id)value
{
	ENSURE_ARG_COUNT(value, 1);
	[Instabug setiPadShakingThreshold:(double) [TiUtils floatValue:value]];
}

-(void)attachFileAtLocation:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug attachFileAtLocation:(NSString *)[TiUtils stringValue:value]];
}

// Set Alerts parameters
-(void)setEmailIsRequired:(id)value
{
	ENSURE_ARG_COUNT(value, 1);
	[Instabug setEmailIsRequired:(BOOL) [TiUtils boolValue:value]];
}

-(void)setEmailInvalidText:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setEmailInvalidText:(NSString*) [TiUtils stringValue:value]];
}

-(void)setCommentIsRequired:(id)value
{
	ENSURE_ARG_COUNT(value, 1);
	[Instabug setCommentIsRequired:(BOOL) [TiUtils boolValue:value]];
}

-(void)setCommentInvalidText:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setCommentInvalidText:(NSString*) [TiUtils stringValue:value]];
}

-(void)setShowStartAlert:(id)value
{
	ENSURE_ARG_COUNT(value, 1);
	[Instabug setShowStartAlert:(BOOL) [TiUtils boolValue:value]];
}

-(void)setStartAlertText:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setStartAlertText:(NSString*) [TiUtils stringValue:value]];
}

-(void)setShowThankYouAlert:(id)value
{
	ENSURE_ARG_COUNT(value, 1);
	[Instabug setCommentIsRequired:(BOOL) [TiUtils boolValue:value]];
}

-(void)setThankYouAlertText:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setThankYouAlertText:(NSString*) [TiUtils stringValue:value]];
}

-(void)setAlertsTitle:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setAlertsTitle:(NSString*) [TiUtils stringValue:value]];
}

// Set Design Parameters

MAKE_SYSTEM_PROP(InstabugColorThemeBlack, InstabugColorThemeBlack);
MAKE_SYSTEM_PROP(InstabugColorThemeGrey,InstabugColorThemeGrey);
MAKE_SYSTEM_PROP(InstabugColorThemeOrange,InstabugColorThemeOrange);
MAKE_SYSTEM_PROP(InstabugColorThemeRed,InstabugColorThemeRed);
MAKE_SYSTEM_PROP(InstabugColorThemeNavy,InstabugColorThemeNavy);
MAKE_SYSTEM_PROP(InstabugColorThemeGreen,InstabugColorThemeGreen);
MAKE_SYSTEM_PROP(InstabugColorThemeCyan,InstabugColorThemeCyan);
MAKE_SYSTEM_PROP(InstabugColorThemeBlue,InstabugColorThemeBlue);
MAKE_SYSTEM_PROP(InstabugColorThemeFlatWhite,InstabugColorThemeFlatWhite);
MAKE_SYSTEM_PROP(InstabugColorThemeFlatGrey,InstabugColorThemeFlatGrey);
MAKE_SYSTEM_PROP(InstabugColorThemeFlatBlack,InstabugColorThemeFlatBlack);
MAKE_SYSTEM_PROP(InstabugColorThemeFlatBlue,InstabugColorThemeFlatBlue);
MAKE_SYSTEM_PROP(InstabugColorThemeFlatRed,InstabugColorThemeFlatRed);
MAKE_SYSTEM_PROP(InstabugColorThemeFlatGreen,InstabugColorThemeFlatGreen);

-(void)setColorTheme:(id)value
{
	ENSURE_ARG_COUNT(value, 1);
	[Instabug setColorTheme:(InstabugColorTheme) [TiUtils intValue:value]];
}

-(void)setHeaderColor:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setHeaderColor:(UIColor*) [[TiUtils colorValue:value] _color]];
}

-(void)setHeaderFontColor:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setHeaderFontColor:(UIColor*) [[TiUtils colorValue:value] _color]];
}

-(void)setButtonsColor:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setButtonsColor:(UIColor*) [[TiUtils colorValue:value] _color]];
}

-(void)setButtonsFontColor:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setButtonsFontColor:(UIColor*) [[TiUtils colorValue:value] _color]];
}

-(void)setTextBackgroundColor:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setTextBackgroundColor:(UIColor*) [[TiUtils colorValue:value] _color]];
}

-(void)setTextFontColor:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setTextFontColor:(UIColor*) [[TiUtils colorValue:value] _color]];
}

-(void)setFloatingButtonForeColor:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setFloatingButtonForeColor:(UIColor*) [[TiUtils colorValue:value] _color]];
}

-(void)setFloatingButtonBackColor:(id)value
{
	ENSURE_SINGLE_ARG(value, NSString);
	[Instabug setFloatingButtonBackColor:(UIColor*) [[TiUtils colorValue:value] _color]];
}

@end
