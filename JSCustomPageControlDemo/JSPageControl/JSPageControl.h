//
//  JSPageControl.h
//  JSCustomPageControlDemo
//
//  Created by jhon.sun on 15/11/19.
//  Copyright © 2015年 jhon.sun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSPageControl : UIControl

@property (nonatomic, assign) NSInteger currentPage;//默认为3
@property (nonatomic, assign) NSInteger numberOfPages;//默认为3

@property (nonatomic, strong) UIImage *currentImage;
@property (nonatomic, strong) UIImage *thumImage;

@property (nonatomic, strong) UIColor *currentPageTintColor;//默认为白色
@property (nonatomic, strong) UIColor *thumPageTintColor;//默认为灰色

@property (nonatomic, assign) CGFloat thumWidth;//默认为5
@property (nonatomic, assign) CGFloat thumHeight;//默认为5
@property (nonatomic, assign) CGFloat thumsDistance;//间距，默认为5

@property (nonatomic, assign) CGFloat cornerValue;//圆角，默认为2.5

@property (nonatomic, assign) CGFloat thumborderWidth;//边框宽度，默认为0
@property (nonatomic, strong) UIColor *thumBorderColor;//边框颜色
@property (nonatomic, assign) CGFloat currentborderWidth;
@property (nonatomic, strong) UIColor *currentBorderColor;

@end
