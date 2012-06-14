//
//  View.m
//  Jun14
//
//  Created by Dan Ristea on 6/13/12.
//  Copyright (c) 2012 NBS. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor=[UIColor purpleColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	
	[@"Hello, World ~ INFO1-CE9236!"
	 drawAtPoint: CGPointMake(20, 30)
	 withFont: [UIFont systemFontOfSize: 32]
	 ];
	
	//font1 to be used for riddle question
	UIFont *font1=[UIFont systemFontOfSize:24.0];
	//font2 to be used for riddle answer
	UIFont *font2=[UIFont italicSystemFontOfSize:24.0];
	//font3 to be used for battery level
	UIFont *font3=[UIFont boldSystemFontOfSize:15.0];



	//stringQR stands for string question riddle
	NSString *stringQR = @"What do ants eat for breakfast?";
	CGPoint point = CGPointMake(20.0, 90.0);
	[stringQR drawAtPoint:point withFont: font1];
	//stringAW stands for string answer word
	NSString *stringAW = @"Answer: ";
	point =CGPointMake(20.0, 120.0);
	[stringAW drawAtPoint:point withFont: font2];
	//stringAR stands for string answer riddle
	NSString *stringAR = @"Oakmeal.";
	point=CGPointMake(120,120.0);
	[stringAR drawAtPoint:point withFont:font1];
	
	
	
	
	// Enable monitoring of battery status
	[[UIDevice currentDevice] batteryLevel];
	[[UIDevice currentDevice] batteryState];
	[[UIDevice currentDevice] setBatteryMonitoringEnabled:YES];
	
	NSArray *batteryStatus = [NSArray arrayWithObjects: 
							  @"Battery status is unknown.", 
							  @"Battery is in use (discharging).", 
							  @"Battery is charging.", 
							  @"Battery is fully charged.", nil];
	
	if ([[UIDevice currentDevice] batteryState] != UIDeviceBatteryStateUnknown)
	{  	
		NSString *msg = [NSString stringWithFormat:
						 @"Battery charge level: %0.2f%%\n%@", [[UIDevice currentDevice] batteryLevel] * 100,
						 [batteryStatus objectAtIndex:[[UIDevice currentDevice] batteryState]] ];
		
		NSLog(@"%@", msg);
		
		NSString *string = msg;
		CGPoint point = CGPointMake(20.0, 330.0);
		[string drawAtPoint:point withFont: font3];
	}
	

	[@"Your Device Info:"
	 drawAtPoint:CGPointMake(20, 200)
	 withFont:[UIFont systemFontOfSize:32]
	 ];
	
	
	
	UIDevice *device = [UIDevice currentDevice];	//There is only one object of this class.
	NSString *string = device.model;		//Is it an iPhone, iPod, or iPad?
	[string drawAtPoint: CGPointMake(20, 260) withFont: [UIFont systemFontOfSize: 24]];
	//string = device.systemName;		//name of operating system, e.g. "iPhone OS"
	string = device.systemVersion;	//version number of operating system, e.g., "5.0
	[string drawAtPoint: CGPointMake(100, 260) withFont: [UIFont systemFontOfSize: 24]];
	[@"identifier:" drawAtPoint:CGPointMake(20, 300) withFont:[UIFont boldSystemFontOfSize:15]];
	string = device.uniqueIdentifier;	//serial number
	[string drawAtPoint: CGPointMake(100, 300) withFont: [UIFont systemFontOfSize: 15]];
	//[string drawAtPoint: CGPointMake(20, 0) withFont: [UIFont systemFontOfSize: 32]];
	

	
	
	NSURL *url = [[NSURL alloc] initWithString:
				  @"http://finance.yahoo.com/d/quotes.csv?s=goog&f=sl1t1"];
	
	NSError *error;
	string = [[NSString alloc]
			initWithContentsOfURL: url
			encoding: NSUTF8StringEncoding
			error: &error
			];
	
	if (string == nil) {
		string = [error localizedDescription];
	}
	[@"Google Stock: " drawAtPoint: CGPointMake(20, 400) withFont: [UIFont systemFontOfSize: 15]];
	[string drawAtPoint: CGPointMake(120, 400) withFont: [UIFont systemFontOfSize: 15]];
	
}




@end
