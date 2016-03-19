//
//  ViewController.m
//  gradient
//
//  Created by saintPN-Mac on 16/3/13.
//  Copyright © 2016年 saintPN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(200, 200, 200, 28)];
    label.text = @"大家快看渐变色";
    [self.view addSubview:label];
    
    CAGradientLayer *layer = [CAGradientLayer layer];
    layer.frame = label.bounds;
    layer.colors = @[(__bridge id)[UIColor redColor].CGColor,
                     (__bridge id)[UIColor orangeColor].CGColor,
                     (__bridge id)[UIColor blackColor].CGColor,
                     (__bridge id)[UIColor yellowColor].CGColor,
                     (__bridge id)[UIColor blueColor].CGColor
                     ];
    
    layer.locations = @[@(0.1),
                        @(0.3),
                        @(0.5),
                        @(0.7),
                        @(0.9)];
    layer.startPoint = CGPointMake(0, 0);
    layer.endPoint = CGPointMake(1, 1);
    layer.type = kCAGradientLayerAxial;
    layer.bounds = CGRectMake(0, 0, 400, 400);
    layer.position = CGPointMake(200, 340);
    layer.mask = label.layer;
    [self.view.layer addSublayer:layer];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
