//
//  ViewController.m
//  kvo-detail
//
//  Created by chenshuang on 2018/8/26.
//  Copyright © 2018年 wenwen. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>

@interface ViewController ()
@property (strong, nonatomic) Person *person1;
@property (strong, nonatomic) Person *person2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.person1 = [[Person alloc] init];
    self.person1.age = 1;
    
    self.person2 = [[Person alloc] init];
    self.person2.age = 2;
    
//    NSLog(@"person1添加KVO监听之前 - %@ %@",object_getClass(self.person1),object_getClass(self.person2));
//    NSLog(@"person1添加KVO监听之前 - %p %p",
//          [self.person1 methodForSelector:@selector(setAge:)],
//          [self.person2 methodForSelector:@selector(setAge:)]);
    
    // 给person1对象添加KVO监听
    NSKeyValueObservingOptions options = NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld;
    [self.person1 addObserver:self forKeyPath:@"age" options:options context:@"123"];
    
//    NSLog(@"person1添加KVO监听之后 - %@ %@",object_getClass(self.person1),object_getClass(self.person2));
//    NSLog(@"person1添加KVO监听之后 - %p %p",
//          [self.person1 methodForSelector:@selector(setAge:)],
//          [self.person2 methodForSelector:@selector(setAge:)]);
    
//    NSLog(@"类对象 - %@ %@",
//          object_getClass(self.person1),  // self.person1.isa
//          object_getClass(self.person2)); // self.person2.isa
//
//    NSLog(@"元类对象 - %@ %@",
//          object_getClass(object_getClass(self.person1)), // self.person1.isa.isa
//          object_getClass(object_getClass(self.person2))); // self.person2.isa.isa
    
//    NSLog(@"类对象 - %@ %@",[self.person1 class],[self.person2 class]);
//    NSLog(@"类对象 - %@ %@",object_getClass(self.person1),object_getClass(self.person2));
    
//    [self printMethodNamesOfClass:object_getClass(self.person1)];
//    [self printMethodNamesOfClass:object_getClass(self.person2)];
}

// 打印class所有方法列表
- (void)printMethodNamesOfClass:(Class)cls {
    unsigned int count;
    // 获得方法数组
    Method *methodList = class_copyMethodList(cls, &count);
    
    // 存储方法名
    NSMutableString *methodNames = [NSMutableString string];
    
    // 遍历所有的方法
    for (int i = 0; i < count; i++) {
        // 获得方法
        Method method = methodList[i];
        // 获得方法名
        NSString *methodName = NSStringFromSelector(method_getName(method));
        // 拼接方法名
        [methodNames appendString:methodName];
        [methodNames appendString:@", "];
    }
    
    // 释放
    free(methodList);
    
    // 打印方法名
    NSLog(@"%@ %@", cls, methodNames);
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // NSKVONotifying_Person是使用Runtime动态创建的一个类，是Person的子类
    
    // self.person1.isa == NSKVONotifying_MJPerson
//    [self.person1 setAge:21];
    
    // self.person2.isa = MJPerson
//    [self.person2 setAge:22];
//    NSLog(@"person1 age = %d,person2 age = %d",self.person1.age,self.person2.age);
    
    // 如果手动触发KVO
//    [self.person1 willChangeValueForKey:@"age"];
//    [self.person1 didChangeValueForKey:@"age"];
    
    // 直接修改成员变量会触发KVO么
//    self.person1.age = 10;
    
    NSLog(@"调用带下划线的成员变量");
    self.person1->_age = 10;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"监听到%@的%@属性值改变了 - %@ - %@", object, keyPath, change, context);
}

- (void)dealloc {
    [self.person1 removeObserver:self forKeyPath:@"age"];
}

@end
