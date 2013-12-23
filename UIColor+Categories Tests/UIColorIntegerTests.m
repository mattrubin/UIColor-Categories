//
//  UIColorIntegerTests.m
//  UIColor+Categories
//
//  Copyright (c) 2013 Matt Rubin
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
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

- (void)testHSB
{
    XCTAssertEqualObjects([UIColor colorWithIntegerHue:120 saturation:50 brightness:100 alpha:50],
                          [UIColor colorWithRed:0.5 green:1.0 blue:0.5 alpha:0.5]);

    XCTAssertEqualObjects([UIColor colorWithIntegerHue:180 saturation:100 brightness:50 alpha:10],
                          [UIColor colorWithRed:0 green:0.5 blue:0.5 alpha:0.1]);
}

@end
