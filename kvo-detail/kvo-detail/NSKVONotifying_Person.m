//
//  NSKVONotifying_Person.m
//  kvo-detail
//
//  Created by chenshuang on 2018/8/26.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "NSKVONotifying_Person.h"

@implementation NSKVONotifying_Person

- (void)setAge:(int)age {
    _NSSetIntValueAndNotify();
}

//// 伪代码
//void _NSSetIntValueAndNotify() {
//    [self willChangeValueForKey:@"age"];
//    [super setAge:age];
//    [self didChangeValueForKey:@"age"];
//}
//
//// 伪代码
//- (void)didChangeValueForKey:(NSString *)key {
//    // 通知监听器，某某属性值发生了改变
//    [oberser observeValueForKeyPath:key ofObject:self change:nil context:nil];
//}

// 屏幕内部实现，隐藏了NSKVONotifying_MJPerson类的存在
- (Class)class {
    return [MJPerson class];
}

- (void)dealloc {
    // 收尾工作
}

- (BOOL)_isKVOA {
    return YES;
}

@end
