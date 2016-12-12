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

int add1(int a,int b){
    return  a+b;
}

int add2(int a,int b){
    return  a+b;
}
int add3(int a,int b){
    return  a+b;
}
int add4(int a,int b){
    return  a+b;
}

int add5(int a,int b){
    return  a+b;
}


typedef int (*add_am)(int,int);



add_am getMethodP(char op){
    switch (op) {
        case '1':
            return add1 ;
            break;
        case '2':
            return add2 ;
            break;
        case '3':
            return add3 ;
            break;
        case '4':
            return add4 ;
            break;
            
        default:
            return add5;
            break;
    }
}

int (*cau(char op))(int,int);


int result(int x,int y,char c){
    
    add_am ad = getMethodP(c);
    return ad(x,y);
}

void test(){
    
    
    printf("x= ,y= , c = %d",result(3, 5, '1'));
    
    
}
@interface ViewController ()

{
    SEL METHOD[METHOD_TYPE_END];
    SEL METHOD_RES[METHOD_TYPE_END];
}

@end
//int (*s_calc_func(char op))(int, int);
//// 定义四个函数
//int add(int, int);
//int sub(int, int);
//int mul(int, int);
//int divm(int, int);
//// 定义指向这类函数的指针
//typedef int (*FP_CALC)(int, int);
//
//// 我先不介绍，大家能看懂下一行的内容吗？
//int (*s_calc_func(char op))(int, int);
//
//// 下一行的内容与上一行完全相同，
//// 定义一个函数calc_func，它根据操作字符 op 返回指向相应的计算函数的指针
//FP_CALC calc_func(char op);
//
//// 根据 op 返回相应的计算结果值
//int calc(int a, int b, char op);
//
//int add(int a, int b)
//{
//    return a + b;
//}
//int sub(int a, int b)
//{
//    return a - b;
//}
//int mul(int a, int b)
//{
//    return a * b;
//}
//int divm(int a, int b)
//{
//    return b? a/b : -1;
//}
//// 这个函数的用途与下一个函数作业和调用方式的完全相同，
//// 参数为op，而不是最后的两个整形
//// 改函数只返回了一个函数指针，相当于 FP_CALC calc_func(char op)
//int (*s_calc_func(char op)) (int, int)
//{
//    return calc_func(op);
//}
//
//FP_CALC calc_func(char op)
//{
//    switch (op)
//    {
//        case '+': return add;
//        case '-': return sub;
//        case '*': return mul;
//        case '/': return divm;
//        default:
//            return NULL;
//    }
//    return NULL;
//}
//
//int calc(int a, int b, char op)
//{
//    　FP_CALC fp = calc_func(op); // 下面是类似的直接定义指向函数指针变量
//    // 下面这行是不用typedef，来实现指向函数的指针的例子，麻烦！
//    int (*s_fp)(int, int) = s_calc_func(op);
//    // ASSERT(fp == s_fp); // 可以断言这俩是相等的
//    　 if (fp) return fp(a, b);
//    　else return -1;
//}
//
//void test_fun()
//{
//    int a = 100, b = 20;
//    printf("calc(%d, %d, %c) = %d\n", a, b, '+', calc(a, b, '+'));
//    printf("calc(%d, %d, %c) = %d\n", a, b, '-', calc(a, b, '-'));
//    printf("calc(%d, %d, %c) = %d\n", a, b, '*', calc(a, b, '*'));
//    printf("calc(%d, %d, %c) = %d\n", a, b, '/', calc(a, b, '/'));
//}

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    test();
    
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









