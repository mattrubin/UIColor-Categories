//
//  UIColorIntegerTests.m
//  UIColor+Categories
//
//  Created by Matt Rubin on 12/23/13.
//  Copyright (c) 2013 Matt Rubin. All rights reserved.
//

@import XCTest;
#import "UIColor+Integers.h"


@interface UIColorIntegerTests : XCTestCase

@end


@implementation UIColorIntegerTests

- (void)testRGB
{
    XCTAssertEqualObjects([UIColor colorWithIntegerRed:51 green:102 blue:153 alpha:50],
                          [UIColor colorWithRed:0.2 green:0.4 blue:0.6 alpha:0.5]);
}

@end
