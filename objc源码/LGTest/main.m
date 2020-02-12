//
//  main.m
//  LGTest
//
//  Created by cooci on 2019/2/7.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "NSObject+FX.h"
#import "FXFather.h"
#import "FXSon.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
#pragma clang diagnostic push
// 让编译器忽略错误
#pragma clang diagnostic ignored "-Wundeclared-selector"

        FXSon *son = [[FXSon alloc] init];
//        
//        // 对象方法
//        // 自己实现
//        [son doInstanceBySon];
//        // 自己没有 - 父类实现
//        [son doInstanceByFather];
//        // 自己没有 - 父类没有 - 元类实现
//        [son doInstanceByMeta];
//        // 自己没有 - 父类没有 - 元类实没有
//        // unrecognized selector sent to instance XXX
//        [son performSelector:@selector(doInstanceByNobody)];
        [son doInstanceNoImplementation];
//
//        // 类方法
//        // 自己实现
//        [FXSon doClassBySon];
//        // 自己没有 - 父类实现
//        [FXSon doClassByFather];
//        // 自己没有 - 父类没有 - 元类实现
//        [FXSon doClassByMeta];
//        // 自己没有 - 父类没有 - 元类实没有
//        // unrecognized selector sent to instance XXX
//        [FXSon performSelector:@selector(doClassByNobody)];
//        [FXSon doClassNoImplementation];
        
        
#pragma clang diagnostic pop
    }
    return 0;
}
