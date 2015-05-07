//
//  ViewController.m
//  MasonryDemo
//
//  Created by xiazer on 15/5/7.
//  Copyright (c) 2015年 xiazer. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor clearColor];
    
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.backgroundColor = [UIColor redColor];
    scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:scrollView];
    
    UIEdgeInsets padding = UIEdgeInsetsMake(10, 10, 10, 10);
    
    __weak typeof(self.view) this = self.view;
    
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(this.mas_top).with.offset(padding.top);
        make.left.equalTo(this.mas_left).with.offset(padding.left);
        make.bottom.equalTo(this.mas_bottom).with.offset(-padding.bottom);
        make.right.equalTo(this.mas_right).with.offset(-padding.right);
    }];
    
    
    UIView *greenView = [[UIView alloc] init];
    greenView.backgroundColor = [UIColor greenColor];
    greenView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:greenView];
    
    UIEdgeInsets paddingV = UIEdgeInsetsMake(100, 100, 100, 100);

    [greenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).with.insets(paddingV);
    }];

    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = [UIColor blueColor];
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:blueView];
    
    UIEdgeInsets paddingBV = UIEdgeInsetsMake(250, 50, 300, 80);
    
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).with.insets(paddingBV);
    }];

    
    UIView *yellowView = [[UIView alloc] init];
    yellowView.backgroundColor = [UIColor yellowColor];
    yellowView.translatesAutoresizingMaskIntoConstraints = NO;
    [blueView addSubview:yellowView];
    
    UIEdgeInsets paddingYV = UIEdgeInsetsMake(10, 20, 20, 10);
    
    [yellowView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(blueView);
        make.edges.equalTo(blueView).with.insets(paddingYV);
    }];

//    UIView *sv = self.view;
//    
//    UIScrollView *scrollView = [UIScrollView new];
//    scrollView.backgroundColor = [UIColor redColor];
//    [sv addSubview:scrollView];
//    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(sv).with.insets(UIEdgeInsetsMake(5,5,5,5));
//    }];
//    
//    UIView *container = [UIView new];
//    container.backgroundColor = [UIColor yellowColor];
//    [scrollView addSubview:container];
//    [container mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(scrollView);
//        make.width.equalTo(scrollView);
//    }];
//    
//    int count = 10;
//    
//    UIView *lastView = nil;
//    
//    for ( int i = 1 ; i <= count ; ++i )
//    {
//        UIView *subv = [UIView new];
//        [container addSubview:subv];
//        subv.backgroundColor = [UIColor colorWithHue:( arc4random() % 256 / 256.0 )
//                                          saturation:( arc4random() % 128 / 256.0 ) + 0.5
//                                          brightness:( arc4random() % 128 / 256.0 ) + 0.5
//                                               alpha:1];
//        subv.backgroundColor = [UIColor clearColor];
//        
//        [subv mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.and.right.equalTo(container);
//            make.height.mas_equalTo(@(20*i));
//            
//            if ( lastView )
//            {
//                make.top.mas_equalTo(lastView.mas_bottom);
//            }
//            else
//            {
//                make.top.mas_equalTo(container.mas_top);
//            }
//        }];
//        
//        lastView = subv;
//    }
//    
//    
//    [container mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(container.mas_top);
//        make.bottom.equalTo(lastView.mas_bottom);
//    }];

//    self.view.backgroundColor = [UIColor whiteColor];
//    
//    UIView *sv = [UIView new];
//    sv.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:sv];
//    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(self.view);
//        make.size.mas_equalTo(CGSizeMake(300, 300));
//    }];
//
//    int padding1 = 10;
//    
//    UIView *sv1 = [UIView new];
//    sv1.backgroundColor = [UIColor orangeColor];
//    [sv addSubview:sv1];
//
//    UIView *sv2 = [UIView new];
//    sv2.backgroundColor = [UIColor orangeColor];
//    [sv addSubview:sv2];
//    
//    [sv1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.mas_equalTo(sv.mas_centerY);
//        make.left.equalTo(sv.mas_left).with.offset(padding1);
//        make.right.equalTo(sv2.mas_left).with.offset(-padding1);
//        make.height.mas_equalTo(@150);
//        make.width.equalTo(sv2);
//    }];
//    
//    [sv2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.mas_equalTo(sv.mas_centerY);
//        make.left.equalTo(sv1.mas_right).with.offset(padding1);
//        make.right.equalTo(sv.mas_right).with.offset(-padding1);
//        make.height.mas_equalTo(@150);
//        make.width.equalTo(sv1);
//    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
