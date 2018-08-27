//
//  main.m
//  Interview-class
//
//  Created by chenshuang on 2018/8/25.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface Person : NSObject {
    @public
    int _age;
}
@end

@implementation Person

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 实例对象
        NSObject *object1 = [[NSObject alloc] init];
        NSObject *object2 = [[NSObject alloc] init];
        NSLog(@"%p %p",object1,object2);
        
        // 类对象
        Class objectClass1 = [object1 class];
        Class objectClass2 = [object2 class];
        Class objectClass3 = object_getClass(object1);
        Class objectClass4 = object_getClass(object2);
        Class objectClass5 = [NSObject class];
        NSLog(@"%p %p %p %p %p",objectClass1,objectClass2,objectClass3,objectClass4,objectClass5);
        
        // meta-class对象，元类对象
        // 将类对象当做参数传入，获得元类对象
        Class objectMetaClass = object_getClass(objectClass5);
        NSLog(@"objectMetaClass - %p %d", objectMetaClass, class_isMetaClass(objectMetaClass));
        
        BOOL result = class_isMetaClass([NSObject class]);
        NSLog(@"result %d", result);
    }
    return 0;
}

/*
 1.Class objc_getClass(const char *aClassName)
 1> 传入字符串类名
 2> 返回对应的类对象
 
 2.Class object_getClass(id obj)
 1> 传入的obj可能是instance对象、class对象、meta-class对象
 2> 返回值
 a) 如果是instance对象，返回class对象
 b) 如果是class对象，返回meta-class对象
 c) 如果是meta-class对象，返回NSObject（基类）的meta-class对象
 
 3.- (Class)class、+ (Class)class
 1> 返回的就是类对象
 
 - (Class) {
 return self->isa;
 }
 
 + (Class) {
 return self;
 }
 */

