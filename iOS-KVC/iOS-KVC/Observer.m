//
//  Observer.m
//  iOS-KVC
//
//  Created by chenshuang on 2018/8/26.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "Observer.h"

@implementation Observer

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"observeValueForKeyPath - %@", change);
}

@end
