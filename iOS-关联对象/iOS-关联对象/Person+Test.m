//
//  Person+Test.m
//  iOS-关联对象
//
//  Created by chenshuang on 2018/8/28.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "Person+Test.h"
#import <objc/runtime.h>

@implementation Person (Test)

- (void)setName:(NSString *)name {
    objc_setAssociatedObject(self, @selector(name), name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)name {
    // 隐式参数
    // _cmd == @selector(name)
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setWeight:(int)weight {
    objc_setAssociatedObject(self, @selector(weight), @(weight), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (int)weight {
    // _cmd == @selector(weight)
    return [objc_getAssociatedObject(self, _cmd) intValue];
}

/**
 * 方法三 - 使用属性名作为key
#define NameKey @"name"
#define WeightKey @"weight"

- (void)setName:(NSString *)name {
    objc_setAssociatedObject(self, NameKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)name {
    return objc_getAssociatedObject(self, NameKey);
}

- (void)setWeight:(int)weight {
    objc_setAssociatedObject(self, WeightKey, @(weight), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (int)weight {
    return [objc_getAssociatedObject(self, WeightKey) intValue];
}
 */

/**
 * 方法二 static char MyKey
static const char NameKey;
static const char WeightKey;

- (void)setName:(NSString *)name {
    objc_setAssociatedObject(self, &NameKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)name {
    return objc_getAssociatedObject(self, &NameKey);
}

- (void)setWeight:(int)weight {
    objc_setAssociatedObject(self, &WeightKey, @(weight), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (int)weight {
    return [objc_getAssociatedObject(self, &WeightKey) intValue];
}
*/

/**
 * 方法一 static void *MyKey = &MyKey;
static const void *NameKey = &NameKey;
static const void *WeightKey = &WeightKey;

- (void)setName:(NSString *)name {
    objc_setAssociatedObject(self, NameKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)name {
    return objc_getAssociatedObject(self, NameKey);
}

- (void)setWeight:(int)weight {
    objc_setAssociatedObject(self, WeightKey, @(weight), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (int)weight {
    return [objc_getAssociatedObject(self, WeightKey) intValue];
}
 */

@end
