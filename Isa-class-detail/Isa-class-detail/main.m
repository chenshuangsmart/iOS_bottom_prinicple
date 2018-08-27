//
//  main.m
//  Isa-class-detail
//
//  Created by chenshuang on 2018/8/25.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

// CSPerson
@interface CSPerson : NSObject {
@public
    int _age;
}
@property (nonatomic, assign) int no;
- (void)personInstanceMethod;
+ (void)personClassMethod;
@end

@implementation CSPerson
- (void)test {
}
- (void)personInstanceMethod {
}
+ (void)personClassMethod {
}
@end

// CSStudent
@interface CSStudent : CSPerson {
@public
    int _weight;
}
@property (nonatomic, assign) int height;
- (void)studentInstanceMethod;
+ (void)studentClassMethod;
@end

@implementation CSStudent
- (void)test{
}
- (void)studentInstanceMethod{
}
+ (void)studentClassMethod{
}
@end

struct cs_objc_class {
    Class isa;
    Class superclass;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1. 实例对象isa
//        CSPerson类对象的地址：0x0000000100001240
//        CSPerson实例对象的isa：0x001d800100001241
//        isa(0x001d800100001241) & ISA_MASK(0x0000000ffffffff8) = 0x0000000100001240
//
//        CSPerson *person = [[CSPerson alloc] init];
//        Class personClass = [CSPerson class];
//        NSLog(@"%p %p", person, personClass);
        
        // 2. 类对象isa
//        CSPerson类对象的地址：0x001d800100001219
//        CSPerson元类对象的地址: 0x0000000100001218
//        isa(0x001d800100001219) & ISA_MASK(0x0000000ffffffff8) = 0x0000000100001218
        
//        Class personClass = [CSPerson class];
//        struct cs_objc_class *personClass2 = (__bridge struct cs_objc_class *)(personClass);
//
//        Class personMetaClass = object_getClass(personClass);
//
//        NSLog(@"%p %p", personClass, personMetaClass);
        
        // 3. superclass
        struct cs_objc_class *personClass = (__bridge struct cs_objc_class *)([CSPerson class]);
        struct cs_objc_class *studentClass = (__bridge struct cs_objc_class *)([CSStudent class]);
        
        NSLog(@"%p %p", personClass, studentClass);
    }
    return 0;
}
