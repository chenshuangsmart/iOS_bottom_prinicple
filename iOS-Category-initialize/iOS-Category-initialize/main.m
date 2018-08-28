//
//  main.m
//  iOS-Category-initialize
//
//  Created by chenshuang on 2018/8/27.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Teacher.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        BOOL sutdentInitialized = NO;
//        BOOL personInitialized = NO;
//        BOOL teacherInitialized = NO;
        
        [Student alloc];
        // 伪代码实现
//        if (!sutdentInitialized) {
//            if (!personInitialized) {
//                objc_msgSend([MJPerson class], @selector(initialize));
//                personInitialized = YES;
//            }
//            objc_msgSend([MJStudent class], @selector(initialize));
//            sutdentInitialized = YES;
//        }
        
        [Teacher alloc];
        // 伪代码实现
//        if (!teacherInitialized) {
//            if (!personInitialized) {
//                objc_msgSend([MJPerson class], @selector(initialize));
//                personInitialized = YES;
//            }
//
//            objc_msgSend([MJTeacher class], @selector(initialize));
//            teacherInitialized = YES;
//        }
        
        // 最终调用方法如下
//        objc_msgSend([MJPerson class], @selector(initialize));
//        // MJPerson (Test2) +initialize
//        objc_msgSend([MJStudent class], @selector(initialize));
//        // MJPerson (Test2) +initialize
//        objc_msgSend([MJTeacher class], @selector(initialize));

        [Person alloc];
    }
    return 0;
}
