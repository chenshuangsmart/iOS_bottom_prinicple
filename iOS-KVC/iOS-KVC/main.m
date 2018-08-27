//
//  main.m
//  iOS-KVC
//
//  Created by chenshuang on 2018/8/26.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Observer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *person = [[Person alloc] init];
        // 通过KVC修改age属性
//        person->_age = 100;
//        person->_isAge = 110;
//        person->age = 120;
//        person->isAge = 130;
        
        NSLog(@"%@", [person valueForKey:@"age"]);
    }
    return 0;
}

void test() {
    Observer *observer = [[Observer alloc] init];
    Person *person = [[Person alloc] init];
    
    // 添加KVO监听
    [person addObserver:observer forKeyPath:@"age" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:NULL];
    
    // 通过KVC修改age属性
    [person setValue:@10 forKey:@"age"];
    
    // 移除KVO监听
    [person removeObserver:observer forKeyPath:@"age"];
}
