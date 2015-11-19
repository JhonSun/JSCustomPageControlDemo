//
//  JSPageControl.m
//  JSCustomPageControlDemo
//
//  Created by jhon.sun on 15/11/19.
//  Copyright © 2015年 jhon.sun. All rights reserved.
//

#import "JSPageControl.h"

@interface JSPageControl ()

@end

@implementation JSPageControl

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.numberOfPages = 3;
        
        self.currentPageTintColor = [UIColor whiteColor];
        self.thumPageTintColor = [UIColor grayColor];
        
        self.thumWidth = 5;
        self.thumHeight = 5;
        self.cornerValue = 2.5;
    }
    return self;
}

#pragma mark - set
- (void)setCurrentPage:(NSInteger)currentPage {
    _currentPage = currentPage;
    for (int i = 0;i < self.subviews.count;i++) {
        UIImageView *dot = [self.subviews objectAtIndex:i];
        if (i == currentPage) {
            if (self.currentImage) {
                dot.image = self.currentImage;
                self.cornerValue = 0;
            } else {
                dot.backgroundColor = self.currentPageTintColor;
            }
            
        } else {
            if (self.thumImage) {
                dot.image = self.thumImage;
                self.cornerValue = 0;
            } else {
                dot.backgroundColor = self.thumPageTintColor;
            }
            
        }
    }
}

- (void)setNumberOfPages:(NSInteger)numberOfPages {
    _numberOfPages = numberOfPages;
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
    for (int i = 0;i < numberOfPages;i++) {
        UIImageView *imageView = [[UIImageView alloc] init];
        [self addSubview:imageView];
    }
    self.currentPage = 0;
}

- (void)layoutSubviews {
    CGFloat thumsDistance = 5;
    CGFloat maxThumWidth = (self.frame.size.width - (thumsDistance * (self.numberOfPages + 1))) / self.numberOfPages;
    if (self.thumWidth > maxThumWidth) {
        self.thumWidth = maxThumWidth;
    }
    if (self.thumHeight > self.frame.size.height) {
        self.thumHeight = self.frame.size.height;
    }
    CGFloat leftSpaceToSuperView = (self.frame.size.width - self.thumWidth * self.numberOfPages - thumsDistance * (self.numberOfPages - 1)) / 2;
    CGFloat topSpaceToSuperView = (self.frame.size.height - self.thumHeight) / 2;
    for (int i = 0;i < self.numberOfPages;i++) {
        UIImageView *imageView = (UIImageView *)[self.subviews objectAtIndex:i];
        imageView.frame = CGRectMake(leftSpaceToSuperView + (thumsDistance + self.thumWidth) * i, topSpaceToSuperView, self.thumWidth, self.thumHeight);
        imageView.layer.cornerRadius = self.cornerValue;
        imageView.layer.masksToBounds = YES;
        
    }
}

@end
