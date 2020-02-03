//
//  FXFather.m
//  LGTest
//
//  Created by mac on 2020/2/3.
//

#import "FXFather.h"

@implementation FXFather

- (void)doInstanceByFather {
    NSLog(@"%s",__func__);
}

+ (void)doClassByFather {
    NSLog(@"%s",__func__);
}

@end
