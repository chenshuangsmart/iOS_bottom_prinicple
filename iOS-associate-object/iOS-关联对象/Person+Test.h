//
//  Person+Test.h
//  iOS-关联对象
//
//  Created by chenshuang on 2018/8/28.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "Person.h"

@interface Person (Test)
@property (assign, nonatomic) int weight;
@property (copy, nonatomic) NSString* name;
@end
