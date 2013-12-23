# UIColor+Categories

A collection of useful methods to extend the funtionality of `UIColor`.


### UIColor+Integers

These replacement methods for the stock `colorWith...` constructors take integer parameters, like those commonly used in visual design software.

```objc
+ (instancetype)colorWithIntegerWhite:(NSUInteger)white;
+ (instancetype)colorWithIntegerWhite:(NSUInteger)white alpha:(NSUInteger)alpha;

+ (instancetype)colorWithIntegerRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue;
+ (instancetype)colorWithIntegerRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue alpha:(NSUInteger)alpha;

+ (instancetype)colorWithIntegerHue:(NSUInteger)hue saturation:(NSUInteger)saturation brightness:(NSUInteger)brightness;
+ (instancetype)colorWithIntegerHue:(NSUInteger)hue saturation:(NSUInteger)saturation brightness:(NSUInteger)brightness alpha:(NSUInteger)alpha;
```


### UIColor+Macros

The `COLOR` macro simplifies the process of creating semantically-named shared static colors.

```objc
@interface UIColor (MyColors)

+ (instancetype)myFavoriteColor;
+ (instancetype)myLeastFavoriteColor;

@end

@implementation UIColor (MyColors)

// The hard way:
+ (instancetype)myFavoriteColor
{
    static UIColor *_myFavoriteColor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _myFavoriteColor = [UIColor colorWithRed:0 green:0.75 blue:1 alpha:1];
    });
    return _myFavoriteColor;
}

// The easy way:
COLOR(myLeastFavoriteColor, [UIColor colorWithRed:0.55 green:0.6 blue:0.4 alpha:1])

@end
```


## License

UIColor+Categories is available under the MIT License. See the [LICENSE][] file for more info.

[LICENSE]: https://github.com/mattrubin/UIColor-Categories/blob/master/LICENSE
