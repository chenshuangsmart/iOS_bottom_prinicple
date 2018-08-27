//
//  Person.m
//  iOS-KVC
//
//  Created by chenshuang on 2018/8/26.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "Person.h"

@implementation Person

// 第一顺序调用
//- (int)getAge {
//    return 11;
//}

// 第二顺序调用
//- (int)age {
//    return 12;
//}

// 第三顺序调用
//- (int)isAge {
//    return 13;
//}

// 第四顺序调用
//- (int)_age {
//    return 14;
//}


//- (void)setAge:(int)age {
//    NSLog(@"setAge: - %d", age);
//}

//- (void)_setAge:(int)age {
//    NSLog(@"_setAge: - %d", age);
//}

//- (void)willChangeValueForKey:(NSString *)key
//{
//    [super willChangeValueForKey:key];
//    NSLog(@"willChangeValueForKey - %@", key);
//}
//
//- (void)didChangeValueForKey:(NSString *)key
//{
//    NSLog(@"didChangeValueForKey - begin - %@", key);
//    [super didChangeValueForKey:key];
//    NSLog(@"didChangeValueForKey - end - %@", key);
//}

// 默认的返回值就是YES
//+ (BOOL)accessInstanceVariablesDirectly {
//    return NO;
//}
@end
