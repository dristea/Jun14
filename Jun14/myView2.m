//
//  myView2.m
//  Jun14
//
//  Created by Dan Ristea on 6/14/12.
//  Copyright (c) 2012 NBS. All rights reserved.
//

#import "myView2.h"

@implementation myView2

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
	[@"Hello, World ~ INFO1-CE9236!"
	 drawAtPoint: CGPointMake(0, 0)
	 withFont: [UIFont systemFontOfSize: 32]
	 ];
}


@end
