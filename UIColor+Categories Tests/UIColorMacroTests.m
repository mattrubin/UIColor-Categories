//
//  UIColorMacroTests.m
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
#import "UIColor+Macros.h"


#pragma mark - Color Category

@interface UIColor (MyColors)

+ (instancetype)myFavoriteColor;
+ (instancetype)myLeastFavoriteColor;

@end

@implementation UIColor (MyColors)

COLOR(myFavoriteColor, [UIColor colorWithRed:0 green:0.75 blue:1 alpha:1])
COLOR(myLeastFavoriteColor, [UIColor colorWithRed:0.55 green:0.6 blue:0.4 alpha:1])

@end


#pragma mark - Tests

@interface UIColorMacroTests : XCTestCase

@end


@implementation UIColorMacroTests

- (void)testMacroColor
{
    XCTAssertEqualObjects([UIColor myFavoriteColor], [UIColor colorWithRed:0 green:0.75 blue:1 alpha:1]);
    XCTAssertEqualObjects([UIColor myLeastFavoriteColor], [UIColor colorWithRed:0.55 green:0.6 blue:0.4 alpha:1]);
}

- (void)testUIColorIsStatic
{
    // Constructed colors can be duplicated
    XCTAssertEqualObjects([UIColor colorWithWhite:0.7 alpha:1], [UIColor colorWithWhite:0.7 alpha:1]);
    XCTAssertNotEqual([UIColor colorWithWhite:0.7 alpha:1], [UIColor colorWithWhite:0.7 alpha:1]);

    // Named colors are shared instances
    XCTAssertEqualObjects([UIColor redColor], [UIColor redColor]);
    XCTAssertEqual([UIColor redColor], [UIColor redColor]);

    UIColor *a = [UIColor greenColor];
    UIColor *b = [UIColor greenColor];
    XCTAssertEqualObjects(a, b);
    XCTAssertEqual(a, b);
    XCTAssertTrue(a == b);
}

- (void)testMacroColorIsStatic
{
    XCTAssertEqualObjects([UIColor myFavoriteColor], [UIColor myFavoriteColor]);
    XCTAssertEqual([UIColor myFavoriteColor], [UIColor myFavoriteColor]);

    UIColor *a = [UIColor myLeastFavoriteColor];
    UIColor *b = [UIColor myLeastFavoriteColor];
    XCTAssertEqualObjects(a, b);
    XCTAssertEqual(a, b);
    XCTAssertTrue(a == b);
}

@end

