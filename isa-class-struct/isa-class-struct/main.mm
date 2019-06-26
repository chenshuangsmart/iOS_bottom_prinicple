//
//  main.m
//  Isa-class-detail
//
//  Created by chenshuang on 2018/8/25.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "MJClassInfo.h"

#pragma mark - CSPerson

// CSPerson
@interface CSPerson : NSObject {
@public
    int _age;
}
@property(nonatomic, assign)int no;
- (void)personInstanceMethod;
+ (void)personClassMethod;
- (void)run;
@end

@implementation CSPerson
- (void)run {
    NSLog(@"%s",__FUNCTION__);
}
- (void)personInstanceMethod {
}
+ (void)personClassMethod {
}
@end

#pragma mark - CSPerson (Extension)

@interface CSPerson (Extension)
- (void)run;
@end

@implementation CSPerson (Extension)
- (void)run {
    NSLog(@"%s",__FUNCTION__);
}
@end

#pragma mark - CSStudent

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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CSStudent *stu = [[CSStudent alloc] init];
        [stu run];
        stu->_weight = 10;
        
//        mj_objc_class *studentClass = (__bridge mj_objc_class *)([CSStudent class]);
        mj_objc_class *personClass = (__bridge mj_objc_class *)([CSPerson class]);
        
//        class_rw_t *studentClassData = studentClass->data();
        class_rw_t *personClassData = personClass->data();
        
//        class_rw_t *studentMetaClassData = studentClass->metaClass()->data();
        class_rw_t *personMetaClassData = personClass->metaClass()->data();
        
        NSLog(@"1111");
    }
    return 0;
}
