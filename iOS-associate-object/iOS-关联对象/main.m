//
//  main.m
//  iOS-关联对象
//
//  Created by chenshuang on 2018/8/28.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+Test.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *person = [[Person alloc] init];
//        person.age = 100;
//        NSLog(@"age = %d",person.age);
        
        // 弱引用 - 坏内存访问 - 修改资料
//        {
//            Person *temp = [[Person alloc] init];
//            objc_setAssociatedObject(person, @"temp", temp, OBJC_ASSOCIATION_ASSIGN);
//        }
//        NSLog(@"%@", objc_getAssociatedObject(person, @"temp"));
        
        Person *person1 = [[Person alloc] init];
        person1.age = 5;
        person1.name = @"person1";
        person1.weight = 10;
        
        Person *person2 = [[Person alloc] init];
        person2.age = 50;
        person2.name = @"person2";
        person2.weight = 100;
        
        NSLog(@"person1 - age is %d, name is %@, weight is %d", person1.age, person1.name, person1.weight);
        NSLog(@"person2 - age is %d, name is %@, weight is %d", person2.age, person2.name, person2.weight);
        
        // 弱引用
        {
            Person *temp = [[Person alloc] init];
            objc_setAssociatedObject(person, @"temp", temp, OBJC_ASSOCIATION_ASSIGN);
        }
        NSLog(@"%@", objc_getAssociatedObject(person, @"temp"));
    }
    return 0;
}
