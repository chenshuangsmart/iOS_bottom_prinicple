//
//  main.m
//  iOS-Category-detail
//
//  Created by chenshuang on 2018/8/26.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+Eat.h"
#import "Person+Test.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"---------------");
        [Student load];
    }
    return 0;
}

void test() {
    Person *person = [[Person alloc] init];
    [person run];
    
    //        objc_msgSend(person, @selector(run));
//    [person test];
    
    //        objc_msgSend(person, @selector(eat));
//    [person eat];
    
    // 通过runtime动态将分类的方法合并到类对象、元类对象zhong
}
