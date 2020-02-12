//
//  FXSon.m
//  LGTest
//
//  Created by mac on 2020/2/3.
//

#import "FXSon.h"
#import <objc/message.h>
#import "FXTeacher.h"

@implementation FXSon

- (void)doInstanceBySon {
    NSLog(@"%s",__func__);
}

+ (void)doClassBySon {
    NSLog(@"%s",__func__);
}
//
//// 实例方法——动态方法决议
//+ (BOOL)resolveInstanceMethod:(SEL)sel {
//    
//    if (sel == @selector(doInstanceNoImplementation)) {
//        NSLog(@"——————————找不到%@-%@方法，崩溃了——————————", self, NSStringFromSelector(sel));
//        IMP instanceIMP = class_getMethodImplementation(self, @selector(doInstanceNoInstead));
//        Method instanceMethod = class_getInstanceMethod(self, @selector(doInstanceNoInstead));
//        const char *instance = method_getTypeEncoding(instanceMethod);
//        return class_addMethod(self, sel, instanceIMP, instance);
//    }
//    
//    return NO;
//}
//
//- (void)doInstanceNoInstead {
//    NSLog(@"——————————解决崩溃——————————");
//}
//
//// 类方法——动态方法决议
//+ (BOOL)resolveClassMethod:(SEL)sel {
//
//    if (sel == @selector(doClassNoImplementation)) {
//        NSLog(@"——————————找不到%@+%@方法，崩溃了——————————", self, NSStringFromSelector(sel));
//        IMP classIMP = class_getMethodImplementation(objc_getMetaClass("FXSon"), @selector(doClassNoInstead));
//        Method classMethod = class_getInstanceMethod(objc_getMetaClass("FXSon"), @selector(doClassNoInstead));
//        const char *cls = method_getTypeEncoding(classMethod);
//        return class_addMethod(objc_getMetaClass("FXSon"), sel, classIMP, cls);
//    }
//
//    return NO;
//}
//
//+ (void)doClassNoInstead {
//    NSLog(@"——————————解决崩溃——————————");
//}
//// 快速转发
//- (id)forwardingTargetForSelector:(SEL)aSelector{
//    NSLog(@"%s -- %@",__func__,NSStringFromSelector(aSelector));
//    if (aSelector == @selector(doInstanceNoImplementation)) {
//        return [FXTeacher alloc];
//    }
//    return [super forwardingTargetForSelector:aSelector];
//}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    NSLog(@"%s -- %@",__func__,NSStringFromSelector(aSelector));
    if (aSelector == @selector(doInstanceNoImplementation)) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return [super methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation{
    NSLog(@"%s ",__func__);
   SEL aSelector = [anInvocation selector];

   if ([[FXTeacher alloc] respondsToSelector:aSelector])
       [anInvocation invokeWithTarget:[FXTeacher alloc]];
   else
       [super forwardInvocation:anInvocation];
}

@end
