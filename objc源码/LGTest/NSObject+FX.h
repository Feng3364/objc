//
//  NSObject+FX.h
//  LGTest
//
//  Created by mac on 2020/2/3.
//

#import <AppKit/AppKit.h>


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (FX)

- (void)doInstanceByMeta;
+ (void)doClassByMeta;

@end

NS_ASSUME_NONNULL_END
