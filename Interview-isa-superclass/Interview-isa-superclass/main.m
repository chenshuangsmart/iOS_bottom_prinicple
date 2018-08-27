//
//  main.m
//  Interview-isa-superclass
//
//  Created by chenshuang on 2018/8/25.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Test.h"

@interface CSPerson : NSObject
+ (void)test;
@end

@implementation CSPerson

//+ (void)test {
//    NSLog(@"+[CSPerson test] - %p", self);
//}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"[CSPerson class] - %p", [CSPerson class]);
        NSLog(@"[NSObject class] - %p", [NSObject class]);
        
        [CSPerson test];
        
        [NSObject test];
    }
    return 0;
}
