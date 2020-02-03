//
//  NSObject+FX.m
//  LGTest
//
//  Created by mac on 2020/2/3.
//

#import "NSObject+FX.h"
#import <AppKit/AppKit.h>

@implementation NSObject (FX)

- (void)doInstanceByMeta {
    NSLog(@"%s",__func__);
}

+ (void)doClassByMeta {
    NSLog(@"%s",__func__);
}

@end
