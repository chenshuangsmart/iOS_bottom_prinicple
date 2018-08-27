//
//  Person+Test.m
//  iOS-Category-detail
//
//  Created by chenshuang on 2018/8/26.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "Person+Test.h"

@implementation Person (Test)

+ (void)load {
    NSLog(@"Person (Test) - load");
}

- (void)run {
    NSLog(@"Person (Test) - run");
}

- (void)test {
    NSLog(@"Person (Test) - test");
}

+ (void)test2 {
    NSLog(@"Person (Test) - test2");
}

@end
