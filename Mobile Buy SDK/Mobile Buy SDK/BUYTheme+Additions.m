//
//  BUYTheme+Additions.m
//  Mobile Buy SDK
//
//  Created by Rune Madsen on 2015-08-18.
//  Copyright (c) 2015 Shopify Inc. All rights reserved.
//

#import "BUYTheme+Additions.h"

@implementation BUYTheme (Additions)

#pragma mark - Colors

- (UIColor*)backgroundColor
{
	return self.style == BUYThemeStyleDark ? BUY_RGB(26, 26, 26) : [UIColor whiteColor];
}

- (UIColor*)separatorColor
{
	return self.style == BUYThemeStyleDark ? BUY_RGB(76, 76, 76) : BUY_RGB(217, 217, 217);
}

- (UIColor*)checkoutButtonTextColor
{
	return self.style == BUYThemeStyleLight ? [UIColor whiteColor] : [UIColor blackColor];
}

+ (UIColor*)topGradientViewTopColor
{
	return [UIColor colorWithWhite:0 alpha:0.25f];
}

#pragma mark - Padding

+ (CGFloat)paddingRed
{
	return 8.0f;
}

+ (CGFloat)paddingPurple
{
	return 12.0f;
}

+ (CGFloat)paddingBlue
{
	return 16.0f;
}

#pragma mark - Sizes

+ (CGFloat)topGradientViewHeight
{
	return 114.0f;
}

+ (CGFloat)productFooterHeight
{
	return 60.f;
}

#pragma mark - Misc

- (UIBlurEffect*)blurEffect
{
	return [UIBlurEffect effectWithStyle:self.style == BUYThemeStyleDark ? UIBlurEffectStyleDark : UIBlurEffectStyleLight];
}

- (UIActivityIndicatorViewStyle)activityIndicatorViewStyle
{
	return self.style == BUYThemeStyleDark ? UIActivityIndicatorViewStyleWhite : UIActivityIndicatorViewStyleGray;
}

- (UIBarStyle)navigationBarStyle
{
	return self.style == BUYThemeStyleDark ? UIBarStyleBlack : UIBarStyleDefault;
}

@end
