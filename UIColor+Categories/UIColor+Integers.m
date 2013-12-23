//
//  UIColor+Integers.m
//  UIColor+Categories
//
//  Created by Matt Rubin on 12/22/13.
//  Copyright (c) 2013 Matt Rubin. All rights reserved.
//

#import "UIColor+Integers.h"


@implementation UIColor (Integers)

+ (instancetype)colorWithIntegerRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue alpha:(NSUInteger)alpha
{
    return [self colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha/100.0];
}

@end
