//
//  UIImage+circleTool.h
//  self-绘制带圆环的图片
//
//  Created by Cuiyongqin on 16/3/28.
//  Copyright © 2016年 Cuiyongqin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (circleTool)
+ (UIImage *)imageWithName:(NSString *)name andBorderWidth:(CGFloat)border andColor:(UIColor *)color;
+ (UIImage *)circleImageWithImageName:(NSString *)imageName;
@end
