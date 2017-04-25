//
//  ViewController.m
//  JSCustomPageControlDemo
//
//  Created by jhon.sun on 15/11/19.
//  Copyright © 2015年 jhon.sun. All rights reserved.
//

#import "ViewController.h"
#import "JSPageControl.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *previousButton;

@property (strong, nonatomic) JSPageControl *myPageControl;
@property (nonatomic, assign) NSInteger pageNumbers;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pageNumbers = 5;
    [self.view addSubview:self.myPageControl];
}

- (void)viewWillLayoutSubviews {
    self.myPageControl.frame = CGRectMake(0, self.previousButton.frame.origin.y + self.previousButton.frame.size.height + 10, self.view.frame.size.width, 40);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)previousPage {
    if (self.myPageControl.currentPage == 0) {
        self.myPageControl.currentPage = self.pageNumbers - 1;
    } else {
        self.myPageControl.currentPage -= 1;
    }
}

- (IBAction)nextPage {
    if (self.myPageControl.currentPage == self.pageNumbers - 1) {
        self.myPageControl.currentPage = 0;
    } else {
        self.myPageControl.currentPage += 1;
    }
}

#pragma mark - get 
- (JSPageControl *)myPageControl {
    if (!_myPageControl) {
        _myPageControl = [[JSPageControl alloc] init];
//        _myPageControl.thumWidth = [UIImage imageNamed:@"pageControl_currentImage"].size.width;
//        _myPageControl.thumHeight = [UIImage imageNamed:@"pageControl_currentImage"].size.height;
//        _myPageControl.currentImage = [UIImage imageNamed:@"pageControl_currentImage"];
//        _myPageControl.thumImage = [UIImage imageNamed:@"pageControl_thumImage"];
        _myPageControl.thumWidth = 9;
        _myPageControl.thumHeight = 9;
        _myPageControl.thumsDistance = 20;
        _myPageControl.currentPageTintColor = [UIColor blueColor];
        _myPageControl.thumPageTintColor = [UIColor whiteColor];
        _myPageControl.cornerValue = 9 / 2;
        _myPageControl.thumborderWidth = 2;
        _myPageControl.thumBorderColor = [UIColor blueColor];
        _myPageControl.numberOfPages = self.pageNumbers;
        
    }
    return _myPageControl;
}

@end
