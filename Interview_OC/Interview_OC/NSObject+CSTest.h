//
//  NSObject+CSTest.h
//  Interview_OC
//
//  Created by chenshuang on 2018/8/25.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject ()

@end

//
//  main.m
//  Interview_OC
//
//  Created by chenshuang on 2018/8/21.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>

// NSObject Implementation
struct NSObject_IMPL {
    Class isa; // 8个字节
};
// 指针 - typedef struct objc_class *Class;

struct Person_IMPL {
    struct NSObject_IMPL NSObject_IVARS;    // 8个字节
    int _age;   // 4
};  // 16个字节,内存对齐,结构体的大小必须是最大成员大小的倍数

// Person
@interface Person: NSObject {
    int _age;
}
@end

@implementation Person

@end

// Person
@interface Student: NSObject {
@public
    int _no;
    int _age;
}
@end

@implementation Student

@end

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        NSObject *obj = [[NSObject alloc] init];
//
//        // 获得NSObject实例对象的成员变量所占用的大小 >> 8
//        NSLog(@"%zd",class_getInstanceSize([NSObject class]));
//
//        // 获得obj指针所指向内存的大小 >> 16
//        NSLog(@"%zd",malloc_size((__bridge const void *)obj));
//
//        Person *person = [[Person alloc] init];
//        NSLog(@"Person - %zd",class_getInstanceSize([Person class]));
//        NSLog(@"Person - %zd",malloc_size((__bridge const void *)person));
//
//        Student *stu = [[Student alloc] init];
//        NSLog(@"stu - %zd",class_getInstanceSize([Student class]));
//        NSLog(@"stu - %zd",malloc_size((__bridge const void *)stu));
//    }
//    return 0;
//}

