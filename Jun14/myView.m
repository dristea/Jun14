//
//  myView.m
//  Jun14
//
//  Created by Dan Ristea on 6/14/12.
//  Copyright (c) 2012 NBS. All rights reserved.
//

#import "myView.h"

@implementation myView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	NSURL *url = [[NSURL alloc] initWithString:
				  @"http://finance.yahoo.com/d/quotes.csv?s=IBM&f=sl1t1"];
	
	NSError *error;
	NSString *string = [[NSString alloc]
						initWithContentsOfURL: url
						encoding: NSUTF8StringEncoding
						error: &error
						];
	
	if (string == nil) {
		string = [error localizedDescription];
	}
	[@"Google Stock: " drawAtPoint: CGPointMake(20, 600) withFont: [UIFont systemFontOfSize: 15]];
	[string drawAtPoint: CGPointMake(120, 650) withFont: [UIFont systemFontOfSize: 15]];

	
	
}


@end
