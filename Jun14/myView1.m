//
//  myView1.m
//  Jun14
//
//  Created by Dan Ristea on 6/14/12.
//  Copyright (c) 2012 NBS. All rights reserved.
//

#import "myView1.h"

@implementation myView1

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor=[UIColor redColor];
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
	[@"IBM Stock: " drawAtPoint: CGPointMake(0, 450) withFont: [UIFont systemFontOfSize: 15]];

}


@end
