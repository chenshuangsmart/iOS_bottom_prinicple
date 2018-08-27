//
//  Person.m
//  iOS-Category-detail
//
//  Created by chenshuang on 2018/8/26.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "Person.h"

// class extension (匿名分类\类扩展)
@interface Person() {
    int _abc;
}
@property (nonatomic, assign) int age;
- (void)abc;
@end

@implementation Person

+ (void)load {
    NSLog(@"Person - load");
}

- (void)abc {
    NSLog(@"Person - abc");
}

- (void)run {
    NSLog(@"Person - run");
}

+ (void)run2 {
    NSLog(@"Person - run2");
}
@end
