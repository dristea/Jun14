//
//  Jun14AppDelegate.h
//  Jun14
//
//  Created by Dan Ristea on 6/13/12.
//  Copyright (c) 2012 NBS. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface Jun14AppDelegate : UIResponder <UIApplicationDelegate>{
	//instantiate a new view
	View *view;
	View *myView;
	//instantiate a new _window
	UIWindow *_window;

}

@property (strong, nonatomic) UIWindow *window;

@end
