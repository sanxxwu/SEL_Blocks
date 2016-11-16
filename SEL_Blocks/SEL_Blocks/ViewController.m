//
//  ViewController.m
//  SEL_Blocks
//
//  Created by Admin on 2016/11/16.
//  Copyright © 2016年 Admin. All rights reserved.
//

#import "ViewController.h"

typedef NS_ENUM(NSUInteger, METHOD_TYPE) {
    METHOD_TYPE_1,
    METHOD_TYPE_1_RES,
    METHOD_TYPE_2,
    METHOD_TYPE_2_RES,
    METHOD_TYPE_3,
    METHOD_TYPE_3_RES,
    
    
    METHOD_TYPE_END

};


@interface ViewController ()

{
    SEL METHOD[METHOD_TYPE_END];
    SEL METHOD_RES[METHOD_TYPE_END];
}

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    METHOD[METHOD_TYPE_1] = @selector(method1);
    METHOD[METHOD_TYPE_1] = @selector(method1);
    METHOD[METHOD_TYPE_1] = @selector(method1);
    
    
    
}



- (void)method1
{
    NSLog(@"%s",__func__);
}

- (void)method2
{
    NSLog(@"%s",__func__);
}

- (void)method3
{
    NSLog(@"%s",__func__);
}

@end
