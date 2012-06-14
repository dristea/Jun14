//
//  Jun14AppDelegate.m
//  Jun14
//
//  Created by Dan Ristea on 6/13/12.
//  Copyright (c) 2012 NBS. All rights reserved.
//

#import "Jun14AppDelegate.h"
#import "View.h"
#import "myView1.h"
#import "myView2.h"


@implementation Jun14AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //Override point for customization after application launch.
	
	
	UIScreen *screen = [UIScreen mainScreen];
    CGRect applicationFrame = screen.applicationFrame;
    CGRect bounds = screen.bounds;
	
    view = [[View alloc] initWithFrame: applicationFrame];
    self.window = [[UIWindow alloc] initWithFrame: bounds];
	
    //self.window.backgroundColor = [UIColor whiteColor];
    [self.window addSubview: view];
	
	
	CGRect  viewRect1 = CGRectMake(0, 450, 400, 100);
	UIView* myView1 = [[UIView alloc] initWithFrame:viewRect1];
	myView1.backgroundColor=[UIColor whiteColor];
	[self.window addSubview:myView1];
	
	
	CGRect  viewRect2 = CGRectMake(400, 450, 400, 100);
	UIView* myView2 = [[UIView alloc] initWithFrame:viewRect2];
	myView2.backgroundColor=[UIColor orangeColor];
	[self.window addSubview:myView2];
	
	
	
	
	
    //self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
	//Trigger another call to drawRect:.
	[view setNeedsDisplay];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
