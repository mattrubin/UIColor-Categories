//
//  UIColor+Integers.m
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

#import "UIColor+Integers.h"


static const CGFloat redDivisor = 255;
static const CGFloat greenDivisor = 255;
static const CGFloat blueDivisor = 255;

static const CGFloat hueDivisor = 360;
static const CGFloat saturationDivisor = 100;
static const CGFloat brightnessDivisor = 100;

static const CGFloat alphaDivisor = 100;


@implementation UIColor (Integers)

+ (instancetype)colorWithIntegerRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue
{
    return [self colorWithIntegerRed:red
                               green:green
                                blue:blue
                               alpha:alphaDivisor];
}

+ (instancetype)colorWithIntegerRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue alpha:(NSUInteger)alpha
{
    return [self colorWithRed:red/redDivisor
                        green:green/greenDivisor
                         blue:blue/blueDivisor
                        alpha:alpha/alphaDivisor];
}

+ (instancetype)colorWithIntegerHue:(NSUInteger)hue saturation:(NSUInteger)saturation brightness:(NSUInteger)brightness
{
    return [self colorWithIntegerHue:hue
                          saturation:saturation
                          brightness:brightness
                               alpha:alphaDivisor];
}

+ (instancetype)colorWithIntegerHue:(NSUInteger)hue saturation:(NSUInteger)saturation brightness:(NSUInteger)brightness alpha:(NSUInteger)alpha
{
    return [self colorWithHue:hue/hueDivisor
                   saturation:saturation/saturationDivisor
                   brightness:brightness/brightnessDivisor
                        alpha:alpha/alphaDivisor];
}

@end
