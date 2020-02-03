//
//  FXSon.m
//  LGTest
//
//  Created by mac on 2020/2/3.
//

#import "FXSon.h"
#import <objc/message.h>

@implementation FXSon

- (void)doInstanceBySon {
    NSLog(@"%s",__func__);
}

+ (void)doClassBySon {
    NSLog(@"%s",__func__);
}

// 处理实例方法
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    
    if ([super resolveClassMethod:sel] == NO) {
        NSLog(@"快救救我！！！！！%@——————%@", self, NSStringFromSelector(sel));
        IMP insteadIMP = class_getMethodImplementation(self, @selector(doHelp));
        Method insteadMethod = class_getInstanceMethod(self, @selector(doHelp));
        const char *instead = method_getTypeEncoding(insteadMethod);
        return class_addMethod(self, sel, insteadIMP, instead);
    }
    
    return [super resolveInstanceMethod:sel];
}

// 处理类方法
+ (BOOL)resolveClassMethod:(SEL)sel {
    
    if ([super resolveClassMethod:sel] == NO) {
        NSLog(@"快救救我！！！！！%@——————%@", self, NSStringFromSelector(sel));
        IMP insteadIMP = class_getMethodImplementation(self, @selector(doHelp));
        Method insteadMethod = class_getInstanceMethod(self, @selector(doHelp));
        const char *instead = method_getTypeEncoding(insteadMethod);
        return class_addMethod(self, sel, insteadIMP, instead);
    }
    
    return [super resolveClassMethod:sel];
}

- (void)doHelp {
    NSLog(@"9999999999999999999999999999999999");
}

@end
