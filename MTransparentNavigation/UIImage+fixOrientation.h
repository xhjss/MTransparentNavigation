//
//  UIImage+fixOrientation.h
//  XHApp
//
//  Created by 刘军林 on 15/12/27.
//  Copyright © 2015年 刘军林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (fixOrientation)

-(UIImage *)fixOrientation;


/**
 *  用颜色生成图片
 *
 *  @param color <#color description#>
 *
 *  @return <#return value description#>
 */
+ (UIImage *)imageWithColor:(UIColor *)color;

@end
