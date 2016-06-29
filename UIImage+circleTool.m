//
//  UIImage+circleTool.m
//  self-绘制带圆环的图片
//
//  Created by Cuiyongqin on 16/3/28.
//  Copyright © 2016年 Cuiyongqin. All rights reserved.
//

#import "UIImage+circleTool.h"

@implementation UIImage (circleTool)
+ (UIImage *)imageWithName:(NSString *)name andBorderWidth:(CGFloat)border andColor:(UIColor *)color
{
    CGFloat margin=border;
    UIImage *image=[UIImage imageNamed:name];
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(image.size.width+2*margin, image.size.height+2*margin), NO, 0.0);
    CGContextRef ctr=UIGraphicsGetCurrentContext();
    
    CGContextAddArc(ctr, image.size.width*0.5+margin, image.size.height*0.5+margin, image.size.width*0.5+margin, 0, M_PI*2, YES);
    
    [color set];
    
    CGContextFillPath(ctr);
    
    CGContextAddArc(ctr, image.size.width*0.5+margin, image.size.height*0.5+margin, image.size.width*0.5, 0, M_PI*2, YES);
    CGContextClip(ctr);
    [image drawAtPoint:CGPointMake(margin, margin)];
    
    UIImage *newImage=UIGraphicsGetImageFromCurrentImageContext();
    return newImage;
}

+ (UIImage *)circleImageWithImageName:(NSString *)imageName {
    
    ///获得图片
    UIImage *image=[UIImage imageNamed:imageName];
    ///  开启位图上下文
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0.0);
    ///取得当前上下文
    CGContextRef ctr=UIGraphicsGetCurrentContext();
    ///描绘路径
    //        CGContextAddEllipseInRect(ctr, CGRectMake(50, 50, image.size.width*0.5 ,image.size.width*0.5));
    CGContextAddArc(ctr, image.size.width*0.5, image.size.height*0.5, image.size.width*0.5, 0, M_PI*2, 0);
    ///裁剪路径
    CGContextClip(ctr);
    ///开始绘制
    [image drawAtPoint:CGPointMake(0, 0)];
    ///取得绘制以后的新的图片
    UIImage *Newimage=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    //    self.imageView.image=Newimage;
    //    ///保存到相簿
    //    UIImageWriteToSavedPhotosAlbum(Newimage, self, @selector(image:didFinishSavingWithError:contextInfo:), @"13434");
    return Newimage;
    
}


@end
