//
//  Person+Eat.m
//  iOS-Category-detail
//
//  Created by chenshuang on 2018/8/26.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "Person+Eat.h"

@implementation Person (Eat)

+ (void)load {
    NSLog(@"Person (Eat) - load");
}

- (void)run {
    NSLog(@"Person (Eat) - run");
}

- (void)eat {
    NSLog(@"Person (Eat) - eat");
}

- (void)eat1 {
    NSLog(@"Person (Eat) - eat1");
}

+ (void)eat2 {
    NSLog(@"Person (Eat) - eat2");
}
@end
